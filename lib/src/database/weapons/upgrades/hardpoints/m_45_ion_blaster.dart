import 'package:swlegion/swlegion.dart';

final m45IonBlaster = Weapon(
  name: 'M-45 Ion Blaster',
  dice: {
    AttackDice.black: 1,
    AttackDice.white: 4,
  },
  minRange: 1,
  maxRange: 4,
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kImpact: 1,
    WeaponKeyword.kIon: 1,
  },
);
