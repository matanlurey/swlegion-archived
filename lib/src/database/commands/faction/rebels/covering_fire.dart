import 'package:swlegion/swlegion.dart';

final coveringFire = CommandCard(
  id: 'covering-fire',
  name: 'Covering Fire',
  unitsActivated: '3 Corps Unit',
  factionRequired: Faction.rebels,
  pips: 3,
  text: r'''
    After a friendly corps unit performs a ranged attack, another friendly unit at range 1-2 may gain 1 dodge token.
  ''',
);
