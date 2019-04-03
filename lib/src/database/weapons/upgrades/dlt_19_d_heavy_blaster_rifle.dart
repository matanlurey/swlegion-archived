import 'package:swlegion/swlegion.dart';

final dlt19DHeavyBlasterRifle = Weapon(
  name: 'DLT-19 Heavy Blaster Rifle',
  dice: {
    AttackDice.red: 2,
    AttackDice.white: 1,
  },
  minRange: 1,
  maxRange: 4,
  keywords: {
    WeaponKeyword.kImpact: 1,
  },
);
