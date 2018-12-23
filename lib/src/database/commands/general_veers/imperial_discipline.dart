import 'package:swlegion/swlegion.dart';

import '../../units/general_veers.dart' as units;

final imperialDiscipline = CommandCard(
  id: 'imperial-discpline',
  name: 'Imperial Discipline',
  unitsActivated: '${units.generalVeers.name} & 2 Units',
  unitsRequired: [units.generalVeers],
  pips: 3,
  text: r'''
    When a friendly unit is issued an order it may recover.
  ''',
);
