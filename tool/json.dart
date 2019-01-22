import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

/// Outputs the current database as a `JSON`-encoded file.
void main(List<String> args) async {
  final catalogData = (serializers.toBuilder()..addPlugin(CustomJsonPlugin()))
      .build()
      .serializeWith(Catalog.serializer, catalog);
  final output = const JsonEncoder.withIndent('  ').convert(catalogData);
  await new File(_outputName).writeAsString('$output\n');
  stdout.writeln('Wrote ${output.length} bytes to $_outputName.');
}

final _outputName = p.join('lib', 'catalog.json');
