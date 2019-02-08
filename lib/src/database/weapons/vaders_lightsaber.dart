import 'package:swlegion/swlegion.dart';

final vadersLightsaber = Weapon.melee(
  name: 'Vader\'s Lightsaber',
  dice: {
    AttackDice.red: 6,
  },
  keywords: const {
    WeaponKeyword.kImpact: 3,
    WeaponKeyword.kPierce: 3,
  },
);
