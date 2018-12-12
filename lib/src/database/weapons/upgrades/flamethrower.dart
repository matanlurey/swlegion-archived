import 'package:swlegion/swlegion.dart';

final flamethrower = Weapon(
    name: 'Flamethrower',
    dice: {
      AttackDice.black: 1,
    },
    minRange: 1,
    maxRange: 1,
    keywords: {
      Keyword.blast: '',
      Keyword.spray: '',
    });
