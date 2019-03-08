import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final noTimeForSorrows = CommandCard(
  id: 'no-time-for-sorrows',
  name: 'No Time for Sorrows',
  activated: '2 Troopers',
  required: [Units.leiaOrgana],
  pips: 2,
  text: r'''
    When a friendly Trooper unit is issued an order, it may perform a speed-1 move.
  ''',
  waves: const [
    Wave.wLeiaOrganaCommanderExpansion,
  ],
);
