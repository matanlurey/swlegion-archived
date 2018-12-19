import 'dart:convert';

import 'package:build/build.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:path/path.dart' as p;
import 'package:swlegion/database.dart' as database;
import 'package:swlegion/swlegion.dart';
import 'package:yaml/yaml.dart' as yaml;

Builder buildJsonCatalog(BuilderOptions _) => _BuildJsonCatalog();

class _BuildJsonCatalog extends Builder {
  static final Serializers _serializer = () {
    final builder = serializers.toBuilder()..addPlugin(StandardJsonPlugin());
    return builder.build();
  }();

  static List<Object> _jsonEncode(Object any) {
    final jsonText = _serializer.serialize(database.units) as String;
    final jsonList = jsonDecode(jsonText) as List;
    return jsonList;
  }

  static const _outputName = 'database.json';

  @override
  Future<void> build(BuildStep buildStep) async {
    final pubspec = yaml.loadYaml(await buildStep.readAsString(
      AssetId(
        buildStep.inputId.package,
        'pubspec.yaml',
      ),
    )) as yaml.YamlMap;
    final catalog = {
      'units': _jsonEncode(database.units),
      'upgrades': _jsonEncode(database.upgrades),
      'weapons': _jsonEncode(database.weapons),
      'version': pubspec['version'] as String,
    };
    final output = const JsonEncoder.withIndent('  ').convert(catalog);
    await buildStep.writeAsString(
      AssetId(
        buildStep.inputId.package,
        _outputName,
      ),
      output,
    );
  }

  @override
  final buildExtensions = {
    r'$lib$': [p.join(_outputName)],
  };
}
