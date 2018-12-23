import 'package:swlegion/swlegion.dart';

import '../../units/han_solo.dart' as units;

final recklessDiversion = CommandCard(
  id: 'reckless-diversion',
  name: 'Reckless Diversion',
  unitsActivated: '${units.hanSolo.name} and 1 Trooper',
  unitsRequired: [units.hanSolo],
  pips: 2,
  text: r'''
    When an enemy unit performs an attack, it must attack a trooper unit that has a faceup order token, if available.
  ''',
);
