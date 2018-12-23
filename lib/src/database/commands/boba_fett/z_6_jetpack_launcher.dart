import 'package:swlegion/swlegion.dart';

import '../../units/boba_fett.dart' as units;
import '../../weapons/commands/z_6_jetpack_launcher.dart' as weapons;

final z6JetpackLauncher = CommandCard(
  id: 'z-6-jetplack-launcher',
  name: 'Z-6 Jetpack Launcher',
  unitsActivated: units.bobaFett.name,
  unitsRequired: [units.bobaFett],
  pips: 3,
  text: r'''
    During Boba Fett's activation he gains the following weapon:
  ''',
  weapon: weapons.z6JetpackLauncher,
);
