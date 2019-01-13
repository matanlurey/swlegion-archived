import 'package:swlegion/swlegion.dart';

final dlt19HHeavyBlasterRifle = Weapon(
  name: 'DLT-19 Heavy Blaster Rifle',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 4,
  keywords: const {
    WeaponKeyword.kImpact: 1,
  },
);
