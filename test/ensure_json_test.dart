import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:swlegion/swlegion.dart';
import 'package:swlegion/database.dart';
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

  for (final card in allCommands) {
    test('should serialize/deserialize "${card.name}"', () {
      final text = json.serialize(card);
      final data = json.deserialize(text);
      expect(card, data);
    });
  }

  for (final unit in allUnits) {
    test('should serialize/deserialize "${unit.name}"', () {
      final text = json.serialize(unit);
      final data = json.deserialize(text);
      expect(unit, data);
    });
  }

  for (final upgrade in allUpgrades) {
    test('should serialize/deserialize "${upgrade.name}"', () {
      final text = json.serialize(upgrade);
      final data = json.deserialize(text);
      expect(upgrade, data);
    });
  }

  for (final weapon in allWeapons) {
    test('should serialize/deserialize "${weapon.name}"', () {
      final text = json.serialize(weapon);
      final data = json.deserialize(text);
      expect(weapon, data);
    });
  }

  test('should support serializing to/from Reference<...>', () {
    final sample = Sample((b) => b
      ..aCommand = allCommands.first.toRef()
      ..commands.add(allCommands.first.toRef())
      ..aUnit = allUnits.first.toRef()
      ..units.add(allUnits.first.toRef())
      ..aUpgrade = allUpgrades.first.toRef()
      ..upgrades.add(allUpgrades.first.toRef()));
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
}
