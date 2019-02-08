import 'package:swlegion/swlegion.dart';

final a180BlasterRifle = Weapon(
  name: 'A-180 Blaster Rifle',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.black: 2,
    AttackDice.white: 1,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
