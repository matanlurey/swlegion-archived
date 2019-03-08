import 'package:swlegion/swlegion.dart';

final coveringFire = CommandCard(
  id: 'covering-fire',
  name: 'Covering Fire',
  activated: '3 Corps Unit',
  faction: Faction.rebels,
  pips: 3,
  text: r'''
    After a friendly corps unit performs a ranged attack, another friendly unit at range 1-2 may gain 1 dodge token.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
