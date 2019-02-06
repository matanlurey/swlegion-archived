import 'dart:math';

import 'components/attack_generator.dart';
import 'components/dice_roller.dart';

class Holodeck with AttackGenerator, DiceRoller {
  final Random _random;

  Holodeck({
    Random random,
  }) : _random = random ?? Random();

  @override
  T roll<T>(List<T> sides) => sides[_random.nextInt(sides.length)];
}
