import 'package:swlegion/swlegion.dart';

final atRtLaserCannon = Weapon(
  name: 'AT-RT Laser Cannon',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 2,
  },
  minRange: 2,
  maxRange: 4,
  keywords: const {
    WeaponKeyword.kImpact: 3,
    WeaponKeyword.kFixedFront: '',
  },
);
