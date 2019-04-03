import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final annihilationLooms = CommandCard(
  id: 'annihilation-looms',
  name: 'Annihilation Looms',
  activated: '${Units.directorKrennic.name} & 2 Units',
  required: [Units.directorKrennic],
  pips: 3,
  text: r'''
    Each trooper unit gains 1 suppression token. If it is round 5 or 6, each
    trooper unit gains 1 additional suppression token.
  ''',
  waves: const [
    Wave.wDirectorOrsonKrennicCommanderExpansion,
  ],
);
