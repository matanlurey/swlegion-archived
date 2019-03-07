import 'package:swlegion/swlegion.dart';

final theDarksaber = Weapon.melee(
  name: 'The Darksaber',
  dice: {
    AttackDice.black: 5,
  },
  keywords: {
    WeaponKeyword.kImpact: 1,
    WeaponKeyword.kPierce: 1,
  },
);
