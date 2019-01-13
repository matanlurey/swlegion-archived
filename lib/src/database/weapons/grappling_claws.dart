import 'package:swlegion/swlegion.dart';

final grapplingClaws = Weapon.melee(
  name: 'Grapping Claws',
  dice: {
    AttackDice.red: 3,
  },
  keywords: const {
    WeaponKeyword.kImpact: 1,
  },
);
