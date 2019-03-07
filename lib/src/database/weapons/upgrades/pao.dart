import 'package:swlegion/swlegion.dart';

final pao = Weapon(
  name: 'Pao',
  minRange: 1,
  maxRange: 4,
  dice: {
    AttackDice.red: 1,
    AttackDice.white: 1,
  },
);
