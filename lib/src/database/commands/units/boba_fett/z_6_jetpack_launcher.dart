import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final z6JetpackLauncher = CommandCard(
  id: 'z-6-jetpack-launcher',
  name: 'Z-6 Jetpack Launcher',
  activated: Units.bobaFett.name,
  required: [Units.bobaFett],
  pips: 3,
  text: r'''
    During Boba Fett's activation he gains the following weapon:
  ''',
  weapon: Weapons.z6JetpackLauncher,
  waves: const [
    Wave.wBobaFettOperativeExpansion,
  ],
);
