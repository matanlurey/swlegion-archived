import 'package:swlegion/swlegion.dart';

final pinnedDown = CommandCard(
  id: 'pinned-down',
  name: 'Pinned Down',
  unitsActivated: '2 Support or Heavy Units',
  factionRequired: Faction.imperials,
  pips: 2,
  text: r'''
    After a friendly supoport or heavy unit performs an attack against a unit with a faceup order token, shuffle that token back into its order pool.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
