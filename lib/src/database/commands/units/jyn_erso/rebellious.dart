import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebellious = CommandCard(
  id: 'rebellious',
  name: 'Rebellious',
  activated: Units.jynErso.name,
  required: [Units.jynErso],
  pips: 1,
  text: r'''
    Jyn Erso gains CHARGE.
    Once per round, when an enemy unit at range 1-2 and in line of sight of Jyn Erso activates, before it performs its Rally Step, Jyn Erso may gain 1 suppression token to either perform an attack against that unit or perform a free move action.
  ''',
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
