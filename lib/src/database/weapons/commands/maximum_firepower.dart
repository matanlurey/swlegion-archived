import 'package:swlegion/swlegion.dart';

final maximumFirepower = Weapon(
  name: 'Maximum Firepower',
  dice: {
    AttackDice.red: 4,
  },
  minRange: 4,
  maxRange: null,
  keywords: const {
    WeaponKeyword.kImpact: 2,
    WeaponKeyword.kImmuneDeflect: '',
  },
);
