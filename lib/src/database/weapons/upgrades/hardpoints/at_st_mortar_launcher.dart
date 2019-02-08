import 'package:swlegion/swlegion.dart';

final atStMortarLauncher = Weapon(
  name: 'AT-ST Mortar Launcher',
  dice: {
    AttackDice.white: 3,
  },
  minRange: 4,
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kSuppressive: '',
  },
);
