import 'package:swlegion/swlegion.dart';

final dualWestar35BlasterPistols = Weapon(
  name: 'Dual Westar-35 Blaster Pistols',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
    AttackDice.white: 1,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
