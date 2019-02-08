import 'package:swlegion/swlegion.dart';

final t7IonDisrupterRifle = Weapon(
  name: 'T-7 Ion Disrupter Rifle',
  dice: {
    AttackDice.black: 1,
    AttackDice.white: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    WeaponKeyword.kIon: 1,
    WeaponKeyword.kImpact: 1,
  },
);
