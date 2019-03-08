import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final evasiveManeuvers = CommandCard(
  id: 'evasive-maneuvers',
  name: 'Evasive Maneuvers',
  activated: '2 Vehicles',
  required: [Units.generalVeers],
  pips: 2,
  text: r'''
    When a friendly vehicle unit is issued an order it gains 1 dodge token.
    Friendly vehicle units can spend dodge tokens to cancel critical hit results.
  ''',
  waves: const [
    Wave.wGeneralVeersCommanderExpansion,
  ],
);
