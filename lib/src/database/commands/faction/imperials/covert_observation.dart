import 'package:swlegion/swlegion.dart';

final covertObservation = CommandCard(
  id: 'covert-observation',
  name: 'Covert Observation',
  activated: '1 Special Forces or Operative Unit',
  faction: Faction.imperials,
  pips: 1,
  text: r'''
    Look at up to 2 random command cards from an opponent's hand.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
