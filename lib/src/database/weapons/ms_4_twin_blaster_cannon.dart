import 'package:swlegion/swlegion.dart';

final ms4TwinBlasterCannon = Weapon(
  name: 'MS-4 Twin Blaster Cannon',
  minRange: 1,
  maxRange: 4,
  dice: {
    AttackDice.red: 2,
    AttackDice.black: 2,
    AttackDice.white: 2,
  },
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kImpact: 3,
  },
);
