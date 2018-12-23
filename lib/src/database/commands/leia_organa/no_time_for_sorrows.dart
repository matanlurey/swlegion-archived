import 'package:swlegion/swlegion.dart';

import '../../units/leia_organa.dart' as units;

final noTimeForSorrows = CommandCard(
  id: 'no-time-for-sorrows',
  name: 'No Time for Sorrows',
  unitsActivated: '2 Troopers',
  unitsRequired: [units.leiaOrgana],
  pips: 2,
  text: r'''
    When a friendly Trooper unit is issued an order, it may perform a speed-1 move.
  ''',
);
