import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:swlegion/swlegion.dart';
import 'package:swlegion/database.dart';
import 'package:test/test.dart';

/// Ensures all entries can be serialized and deserialized to equal instances.
void main() {
  Serializers json;

  setUpAll(() {
    json = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
  });

  for (final unit in units) {
    test('should serialize/deserialize "${unit.name}"', () {
      final text = json.serialize(unit);
      final data = json.deserialize(text);
      expect(unit, data);
    });
  }

  for (final weapon in weapons) {
    test('should serialize/deserialize "${weapon.name}"', () {
      final text = json.serialize(weapon);
      final data = json.deserialize(text);
      expect(weapon, data);
    });
  }
}
