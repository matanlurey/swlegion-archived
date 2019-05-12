import 'package:swlegion/swlegion.dart';

final rps6RocketGunner = Weapon(
  name: 'RPS-6 Rocket Gunner',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
    AttackDice.white: 1,
  },
  minRange: 2,
  maxRange: 4,
  keywords: {
    WeaponKeyword.kImpact: 2,
  },
);
