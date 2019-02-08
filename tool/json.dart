import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

/// Outputs the current database as a `JSON`-encoded file.
void main() async {
  final output = outputJson();
  await new File(outputName).writeAsString('$output\n');
  stdout.writeln('Wrote ${output.length} bytes to $outputName.');
}

/// Returns the output JSON.
String outputJson() {
  final catalogData = (serializers.toBuilder()..addPlugin(CustomJsonPlugin()))
      .build()
      .serializeWith(Catalog.serializer, catalog);
  return const JsonEncoder.withIndent('  ').convert(catalogData);
}

/// Where to output JSON.
final outputName = p.join('lib', 'catalog.json');
