import 'package:swlegion/swlegion.dart';

import '../../units/general_veers.dart' as units;
import '../../weapons/commands/maximum_firepower.dart' as weapons;

final maximumFirepower = CommandCard(
  id: 'maximum-firepower',
  name: 'Maximum Firepower',
  unitsActivated: units.generalVeers.name,
  unitsRequired: [units.generalVeers],
  pips: 1,
  text: r'''
    At the end of General Veers’ activation, he may perform an attacking using the following weapon.
  ''',
  weapon: weapons.maximumFirepower,
);
