import 'package:swlegion/swlegion.dart';

final fettsEE3Carbine = Weapon(
  name: 'Fett\'s EE-3 Carbine',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.black: 2,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
