import 'package:swlegion/swlegion.dart';

final atRtFlamethrower = Weapon(
  name: 'AT-RT Flamethrower',
  dice: {
    AttackDice.black: 2,
  },
  minRange: 1,
  maxRange: 1,
  keywords: {
    WeaponKeyword.kBlast: '',
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kSpray: '',
  },
);
