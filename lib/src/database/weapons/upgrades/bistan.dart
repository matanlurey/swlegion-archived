import 'package:swlegion/swlegion.dart';

final bistan = Weapon(
  name: 'Bistan',
  minRange: 1,
  maxRange: 4,
  dice: {
    AttackDice.black: 1,
    AttackDice.white: 4,
  },
  keywords: {
    WeaponKeyword.kImpact: 1,
    WeaponKeyword.kIon: 1,
  },
);
