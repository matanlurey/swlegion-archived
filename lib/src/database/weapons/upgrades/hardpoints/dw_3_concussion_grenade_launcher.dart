import 'package:swlegion/swlegion.dart';

final dw3ConcussionGrenadeLauncher = Weapon(
  name: 'DW3-Concussion Grenade Launcher',
  dice: {
    AttackDice.black: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    Keyword.blast: '',
    Keyword.fixedX: 'Front',
  },
);
