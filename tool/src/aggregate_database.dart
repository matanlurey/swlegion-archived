import 'dart:async';
import 'dart:collection';

import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;

Builder aggregateDatabase(BuilderOptions _) => _AggregateDatabase();

class _AggregateDatabase extends Builder {
  static final _outputs = {
    p.join(
      'src',
      'all_commands.dart',
    ): Glob('lib/src/database/commands/**.dart'),
    p.join(
      'src',
      'all_units.dart',
    ): Glob('lib/src/database/units/**.dart'),
    p.join(
      'src',
      'all_upgrades.dart',
    ): Glob('lib/src/database/upgrades/**.dart'),
    p.join(
      'src',
      'all_weapons.dart',
    ): Glob('lib/src/database/weapons/**.dart'),
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    for (final entry in _outputs.entries) {
      final output = AssetId(
        buildStep.inputId.package,
        p.join('lib', entry.key),
      );
      final aggregate = new SplayTreeMap<String, String>();
      await for (final input in buildStep.findAssets(entry.value)) {
        final library = await buildStep.resolver.libraryFor(input);
        final topLevel = library.definingCompilationUnit.topLevelVariables;
        if (topLevel.isEmpty) {
          log.warning('Skpping ${input.path} due to no top-level fields');
          continue;
        }
        final model = topLevel.first.name;
        aggregate[p.joinAll(input.pathSegments.skip(2))] = model;
      }
      final imports = aggregate.keys.map((i) => "import '$i';").join('\n');
      final models = aggregate.values.map((name) => '  $name').join(',\n');
      await buildStep.writeAsString(
        output,
        '$imports\n\nfinal aggregate = [\n$models\n];\n',
      );
    }
  }

  @override
  final buildExtensions = {
    r'$lib$': _outputs.keys.toList(),
  };
}
