import 'package:swlegion/swlegion.dart';

import '../../units/general_veers.dart' as units;

final evasiveManeuvers = CommandCard(
  id: 'evasive-maneuvers',
  name: 'Evasive Maneuvers',
  unitsActivated: '2 Vehicles',
  unitsRequired: [units.generalVeers],
  pips: 2,
  text: r'''
    When a friendly vehicle unit is issued an order it gains 1 dodge token. Friendly vehicle units can spend dodge tokens to cancel critical hit results.
  ''',
);
