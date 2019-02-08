import 'package:swlegion/swlegion.dart';

final eWebHeavyBlaster = Weapon(
  name: 'E-Web Heavy Blaster',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 2,
    AttackDice.white: 2,
  },
  keywords: {
    WeaponKeyword.kCumbersome: '',
    WeaponKeyword.kFixedFront: '',
  },
);
