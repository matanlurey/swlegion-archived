import 'package:swlegion/swlegion.dart';

final $1dot4FDLaserCannon = Weapon(
  name: '1.4 FD Laser Canon',
  minRange: 1,
  maxRange: 4,
  dice: {
    AttackDice.black: 5,
  },
  keywords: {
    Keyword.fixedX: 'Front',
    Keyword.impactX: '2',
  },
);
