import 'package:swlegion/swlegion.dart';

final maximumFirepower = Weapon(
    name: 'Maximum Firepower',
    dice: {
      AttackDice.red: 4,
    },
    minRange: 4,
    maxRange: null,
    keywords: {
      Keyword.impactX: '2',
      Keyword.immuneX: 'Deflect',
    });
