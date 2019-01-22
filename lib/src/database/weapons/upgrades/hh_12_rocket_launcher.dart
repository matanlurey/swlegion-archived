import 'package:swlegion/swlegion.dart';

final hh12RocketLauncher = Weapon(
  name: 'HH-12 Rocket Launcher',
  dice: {
    AttackDice.black: 3,
  },
  minRange: 2,
  maxRange: 4,
  keywords: const {
    WeaponKeyword.kCumbersome: '',
    WeaponKeyword.kImpact: 3,
  },
);
