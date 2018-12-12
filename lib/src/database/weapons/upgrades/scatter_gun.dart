import 'package:swlegion/swlegion.dart';

final scatterGun = Weapon(
  name: 'Scatter Gun',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    Keyword.pierceX: '1',
  },
);
