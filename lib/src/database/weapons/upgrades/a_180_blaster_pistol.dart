import 'package:swlegion/swlegion.dart';

final a180BlasterPistol = Weapon(
  name: 'A-180 Blaster Pistol',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.red: 2,
    AttackDice.white: 1,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
