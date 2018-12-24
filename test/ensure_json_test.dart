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

  for (final card in commands) {
    test('should serialize/deserialize "${card.name}"', () {
      final text = json.serialize(card);
      final data = json.deserialize(text);
      expect(card, data);
    });
  }

  for (final unit in units) {
    test('should serialize/deserialize "${unit.name}"', () {
      final text = json.serialize(unit);
      final data = json.deserialize(text);
      expect(unit, data);
    });
  }

  for (final upgrade in upgrades) {
    test('should serialize/deserialize "${upgrade.name}"', () {
      final text = json.serialize(upgrade);
      final data = json.deserialize(text);
      expect(upgrade, data);
    });
  }

  for (final weapon in weapons) {
    test('should serialize/deserialize "${weapon.name}"', () {
      final text = json.serialize(weapon);
      final data = json.deserialize(text);
      expect(weapon, data);
    });
  }

  test('should support serializing to/from Reference<...>', () {
    final sample = Sample((b) => b
      ..commands.add(commands.first.toRef())
      ..units.add(units.first.toRef())
      ..upgrades.add(upgrades.first.toRef()));
    final text = json.serializeWith(Sample.serializer, sample);
    final data = json.deserializeWith(Sample.serializer, text);
    expect(sample, data);
  });
}
