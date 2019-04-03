import 'package:swlegion/swlegion.dart';

final e11DGrenadeLauncher = Weapon(
  name: 'E-11D Grenade Launcher',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.red: 1,
  },
  keywords: {
    WeaponKeyword.kBlast: '',
  },
);
