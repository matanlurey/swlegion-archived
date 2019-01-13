import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

import 'entity/sample.dart';

/// Ensures all entries can be serialized and deserialized to equal instances.
void main() {
  Serializers json;

  setUpAll(() {
    json = (serializers.toBuilder()
          ..add(Sample.serializer)
          ..addPlugin(StandardJsonPlugin()))
        .build();
  });

  for (final card in catalog.commandCards) {
    test('should serialize/deserialize "${card.name}"', () {
      final text = json.serialize(card);
      final data = json.deserialize(text);
      expect(card, data);
    });
  }

  for (final unit in catalog.units) {
    test('should serialize/deserialize "${unit.name}"', () {
      final text = json.serialize(unit);
      final data = json.deserialize(text);
      expect(unit, data);
    });
  }

  for (final upgrade in catalog.upgrades) {
    test('should serialize/deserialize "${upgrade.name}"', () {
      final text = json.serialize(upgrade);
      final data = json.deserialize(text);
      expect(upgrade, data);
    });
  }

  test('should support serializing to/from Reference<...>', () {
    final sample = Sample((b) => b
      ..aCommand = catalog.commandCards.first.toRef()
      ..commands.add(catalog.commandCards.first.toRef())
      ..aUnit = catalog.units.first.toRef()
      ..units.add(catalog.units.first.toRef())
      ..aUpgrade = catalog.upgrades.first.toRef()
      ..upgrades.add(catalog.upgrades.first.toRef()));
    final text = json.serializeWith(Sample.serializer, sample);
    final data = json.deserializeWith(Sample.serializer, text);
    expect(sample, data);
  });

  test('should allow implicit refs (Unit instead of Reference<Unit>)', () {
    final sample = Sample((b) => b
      ..aUnit = Units.stormtroopers
      ..units.add(Units.stormtroopers));
    final data = json.serializeWith(Sample.serializer, sample);
    expect(
      data,
      {
        'aUnit': {
          'id': Units.stormtroopers.id,
        },
        'units': [
          {
            'id': Units.stormtroopers.id,
          },
        ],
      },
    );
  });

  test('should serialize keywords as simple JSON', () {
    final sample = Sample(
      (b) => b.keywords[UnitKeyword.kPrecise] = JsonObject(1),
    );
    final data = json.serializeWith(Sample.serializer, sample);
    expect(data, {
      'keywords': {
        // TODO: Figure out why extra quotes/strange encoding occur.
        // https://github.com/google/built_value.dart/issues/568
        '"${UnitKeyword.kPrecise.id}"': 1,
      },
    });
  });
}
