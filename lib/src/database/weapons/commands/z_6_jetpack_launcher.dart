import 'package:swlegion/swlegion.dart';

final z6JetpackLauncher = Weapon(
  name: 'Z-6 Jetpack Launcher',
  dice: {
    AttackDice.red: 3,
  },
  minRange: 3,
  maxRange: 4,
  keywords: const {
    WeaponKeyword.kBlast: '',
    WeaponKeyword.kImpact: 2,
  },
);
