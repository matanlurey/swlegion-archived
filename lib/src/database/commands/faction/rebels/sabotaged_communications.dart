import 'package:swlegion/swlegion.dart';

final sabotagedCommunications = CommandCard(
  id: 'sabotaged-communications',
  name: 'Sabotaged Communications',
  unitsActivated: '1 Special Forces or Operative Unit',
  factionRequired: Faction.rebels,
  pips: 1,
  text: r'''
    Your opponent must issue orders to 1 fewer unit than is indicated on their command card, to a minimum of 1.
  ''',
);
