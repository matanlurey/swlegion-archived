import 'package:swlegion/swlegion.dart';

final concussionGrenades = Weapon(
  name: 'Concussion Grenades',
  dice: {
    AttackDice.black: 1,
  },
  minRange: 1,
  maxRange: 1,
  keywords: {
    WeaponKeyword.kBlast: '',
  },
);
