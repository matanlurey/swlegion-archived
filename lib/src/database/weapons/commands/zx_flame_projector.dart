import 'package:swlegion/swlegion.dart';

final zxFlameProjector = Weapon(
    name: 'ZX Flame Projector',
    dice: {
      AttackDice.red: 1,
    },
    minRange: 0,
    maxRange: 1,
    keywords: {
      Keyword.blast: '',
      Keyword.spray: '',
    });
