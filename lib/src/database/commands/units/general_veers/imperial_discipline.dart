import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final imperialDiscipline = CommandCard(
  id: 'imperial-discpline',
  name: 'Imperial Discipline',
  unitsActivated: '${Units.generalVeers.name} & 2 Units',
  unitsRequired: [Units.generalVeers],
  pips: 3,
  text: r'''
    When a friendly unit is issued an order it may recover.
  ''',
);
