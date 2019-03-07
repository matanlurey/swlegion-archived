import 'package:swlegion/swlegion.dart';

final lateralQuadMK2EWCannons = Weapon(
  name: 'Lateral Quad MK 2E/W Cannons',
  minRange: 1,
  maxRange: 4,
  dice: {
    AttackDice.red: 2,
    AttackDice.black: 2,
  },
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kImpact: 2,
  },
);
