import 'package:swlegion/swlegion.dart';

final forceLightning = Weapon(
  name: 'Force Lightning',
  dice: {
    AttackDice.red: 2,
    AttackDice.black: 2,
    AttackDice.white: 2,
  },
  minRange: 0,
  maxRange: 2,
  keywords: {
    WeaponKeyword.kPierce: 1,
    WeaponKeyword.kSuppressive: '',
  },
);
