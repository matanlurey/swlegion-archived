import 'package:swlegion/swlegion.dart';

final mpl57BarrageLauncher = Weapon(
  name: 'MPL-57 Barrage Launcher',
  dice: {
    AttackDice.black: 1,
    AttackDice.white: 2,
  },
  minRange: 1,
  maxRange: 3,
  keywords: {
    WeaponKeyword.kBlast: '',
    WeaponKeyword.kImpact: 2,
  },
);
