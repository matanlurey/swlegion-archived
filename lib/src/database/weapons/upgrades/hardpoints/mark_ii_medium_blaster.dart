import 'package:swlegion/swlegion.dart';

final markIIMediumBlaster = Weapon(
  name: 'Mark II Medium Blaster',
  dice: {
    AttackDice.black: 4,
  },
  minRange: 1,
  maxRange: 3,
  keywords: {
    WeaponKeyword.kFixedFront: '',
  },
);
