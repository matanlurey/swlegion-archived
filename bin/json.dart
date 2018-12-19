import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:path/path.dart' as p;
import 'package:swlegion/database.dart' as database;
import 'package:swlegion/swlegion.dart';
import 'package:yaml/yaml.dart' as yaml;

/// Outputs the current database as a `JSON`-encoded file.
void main(List<String> args) async {
  final pubspec = yaml.loadYaml(
    await File(_pubspecFile).readAsString(),
  ) as yaml.YamlMap;
  final catalog = {
    'units': _jsonEncode(database.units, Unit.serializer),
    'upgrades': _jsonEncode(database.upgrades, Upgrade.serializer),
    'weapons': _jsonEncode(database.weapons, Weapon.serializer),
    'version': pubspec['version'] as String,
  };
  var output = const JsonEncoder.withIndent('  ').convert(catalog);
  // HACK: Remove double-encoding.
  output = output.replaceAll(r'\"', '');
  await new File(_outputName).writeAsString('$output\n');
  stdout.writeln('Wrote ${output.length} bytes to $_outputName.');
}

final Serializers _serializer = () {
  final builder = serializers.toBuilder()..addPlugin(StandardJsonPlugin());
  return builder.build();
}();

List<Object> _jsonEncode<T>(Iterable<T> any, Serializer<T> serializer) {
  return any.map<Object>((object) {
    return _serializer.serializeWith(serializer, object);
  }).toList();
}

final _outputName = p.join('lib', 'database.json');
final _pubspecFile = p.join('pubspec.yaml');
