import 'package:swlegion/swlegion.dart';

final coordinatedFire = CommandCard(
  id: 'coordinated-fire',
  name: 'Coordinated Fire',
  activated: '3 Corps Unit',
  faction: Faction.imperials,
  pips: 3,
  text: r'''
    After a friendly corps unit spends an aim token, another friendly unit at range 1-2 may gain 1 aim token.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
