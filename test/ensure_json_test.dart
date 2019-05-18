import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

import '../tool/json.dart' as tool_json;
import 'entity/sample.dart';

/// Ensures all entries can be serialized and deserialized to equal instances.
void main() {
  Serializers json;

  setUpAll(() {
    json = (serializers.toBuilder()
          ..addPlugin(CustomJsonPlugin())
          ..add(Sample.serializer))
        .build();
  });

  group('CustomJsonPlugin', () {
    _test(
      (serializers.toBuilder()
            ..addPlugin(CustomJsonPlugin())
            ..add(Sample.serializer))
          .build(),
    );
  });

  group('BuiltJsonPlugin', () {
    _test(
      (serializers.toBuilder()..add(Sample.serializer)).build(),
      isStandardJson: false,
    );
  });

  test('should keep lib/catalog.json up to date', () async {
    final catalogJson = await File(tool_json.outputName).readAsString();
    expect(
      catalogJson,
      '${tool_json.outputJson()}\n',
      reason: 'Run dart tool/json.dart',
    );
  });
}

void _test(Serializers json, {bool isStandardJson = true}) {
  for (final card in catalog.commandCards) {
    test('should serialize/deserialize "${card.name}"', () {
      final text = json.serializeWith(CommandCard.serializer, card);
      final data = json.deserializeWith(CommandCard.serializer, text);
      expect(card, data);
    });
  }

  for (final unit in catalog.units) {
    test('should serialize/deserialize "${unit.name}"', () {
      final text = json.serializeWith(Unit.serializer, unit);
      final data = json.deserializeWith(Unit.serializer, text);
      expect(unit, data);
    });
  }

  for (final upgrade in catalog.upgrades) {
    test('should serialize/deserialize "${upgrade.name}"', () {
      final text = json.serializeWith(Upgrade.serializer, upgrade);
      final data = json.deserializeWith(Upgrade.serializer, text);
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
  }, skip: !isStandardJson);

  test('should serialize keywords as simple JSON', () {
    final sample = Sample(
      (b) => b.keywords[UnitKeyword.kPrecise] = 1,
    );
    final data = json.serializeWith(Sample.serializer, sample);
    expect(data, {
      'keywords': {
        '${UnitKeyword.kPrecise.id}': 1,
      },
    });
    expect(json.deserializeWith(Sample.serializer, data), sample);
  }, skip: !isStandardJson);
}
