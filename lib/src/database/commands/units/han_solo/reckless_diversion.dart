import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final recklessDiversion = CommandCard(
  id: 'reckless-diversion',
  name: 'Reckless Diversion',
  activated: '${Units.hanSolo.name} and 1 Trooper',
  required: [Units.hanSolo],
  pips: 2,
  text: r'''
    When an enemy unit performs an attack, it must attack a trooper unit that has a faceup order token, if available.
  ''',
  waves: const [
    Wave.wHanSoloCommanderExpansion,
  ],
);
