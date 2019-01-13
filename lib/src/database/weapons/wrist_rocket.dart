import 'package:swlegion/swlegion.dart';

final wristRocket = Weapon(
  name: 'Wrist Rocket',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.black: 2,
  },
  keywords: const {
    WeaponKeyword.kImpact: 1,
  },
);
