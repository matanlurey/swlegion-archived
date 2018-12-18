import 'package:swlegion/swlegion.dart';

final sonicCharge = Weapon(
  name: 'Sonic Charge',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
  },
  minRange: 1,
  maxRange: 1,
  areaOfEffect: 1,
  keywords: {
    Keyword.armXY: '1, Sonic Charge',
    Keyword.denotateXY: '1, Sonic Charge',
    Keyword.blast: '',
    Keyword.suppressive: '',
  },
);
