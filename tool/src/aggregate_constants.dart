import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:path/path.dart' as p;

Builder aggregateConstants(BuilderOptions _) => _AggregateConstants();

class _AggregateConstants extends Builder {
  @override
  Future<void> build(BuildStep buildStep) async {
    final input = await buildStep.inputLibrary;
    final name = p.basenameWithoutExtension(buildStep.inputId.path);
    final output = StringBuffer()..writeln("part of '$name.dart';\n");
    for (final clazz in input.definingCompilationUnit.types) {
      if (clazz.getGetter('values') != null) {
        final fields = clazz.fields.where((f) => f.isConst);
        _writeSet(output, clazz.name, fields);
      }
    }
    return buildStep.writeAsString(
      AssetId(
        buildStep.inputId.package,
        _className(buildStep.inputId.path),
      ),
      output.toString(),
    );
  }

  void _writeSet(
    StringBuffer output,
    String name,
    Iterable<FieldElement> fields,
  ) {
    final field = '_\$${name[0].toLowerCase() + name.substring(1)}Values';
    output.writeln('const $field = const [');
    for (final field in fields) {
      output.writeln('  $name.${field.name},');
    }
    output.writeln('];\n');
  }

  static String _className(String output) {
    final file = p.withoutExtension(output);
    return p.join('$file.aggregate.dart');
  }

  @override
  final buildExtensions = const {
    'src/model/keyword.dart': [
      'src/model/keyword.aggregate.dart',
    ],
    'src/model/wave.dart': [
      'src/model/wave.aggregate.dart',
    ],
  };
}
