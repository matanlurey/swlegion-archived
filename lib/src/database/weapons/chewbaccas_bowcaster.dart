import 'package:swlegion/swlegion.dart';

final chewbaccasBowcaster = Weapon(
  name: 'Chewbacca\'s Bowcaster',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.white: 2,
    AttackDice.red: 2,
  },
  keywords: {
    WeaponKeyword.kImpact: 1,
    WeaponKeyword.kPierce: 1,
  },
);
