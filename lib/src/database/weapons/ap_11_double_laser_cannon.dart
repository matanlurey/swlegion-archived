import 'package:swlegion/swlegion.dart';

final ap11DoubleLaserCannon = Weapon(
  name: 'AP/11 Double Laster Cannon',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.red: 3,
    AttackDice.black: 3,
  },
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kImpact: 3,
  },
);
