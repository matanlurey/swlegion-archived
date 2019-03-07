import 'package:swlegion/swlegion.dart';

final frenzy = Weapon.melee(
  name: 'Frenzy',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 2,
    AttackDice.white: 1,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
