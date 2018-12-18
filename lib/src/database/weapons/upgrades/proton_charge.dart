import 'package:swlegion/swlegion.dart';

// TODO: Add AOE.
final protonCharge = Weapon(
  name: 'Sonic Charge',
  dice: {
    AttackDice.red: 1,
    AttackDice.white: 2,
  },
  minRange: 1,
  maxRange: 1,
  keywords: {
    Keyword.armXY: '1, Proton Charge',
    Keyword.denotateXY: '1, Proton Charge',
    Keyword.blast: '',
    Keyword.impactX: '1',
  },
);
