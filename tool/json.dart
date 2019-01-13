import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:path/path.dart' as p;
import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

/// Outputs the current database as a `JSON`-encoded file.
void main(List<String> args) async {
  final catalogData = _serializer.serializeWith(Catalog.serializer, catalog);
  var output = const JsonEncoder.withIndent('  ').convert(catalogData);
  // HACK: Remove double-encoding.
  output = output.replaceAll(r'\"', '');
  await new File(_outputName).writeAsString('$output\n');
  stdout.writeln('Wrote ${output.length} bytes to $_outputName.');
}

final Serializers _serializer = () {
  final builder = serializers.toBuilder()..addPlugin(StandardJsonPlugin());
  return builder.build();
}();

final _outputName = p.join('lib', 'catalog.json');
