import 'package:swlegion/swlegion.dart';

final covertObservation = CommandCard(
  id: 'covert-observation',
  name: 'Covert Observation',
  unitsActivated: '1 Special Forces or Operative Unit',
  factionRequired: Faction.imperials,
  pips: 1,
  text: r'''
    Look at up to 2 random command cards from an opponent's hand.
  ''',
);
