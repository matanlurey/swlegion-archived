import 'package:swlegion/swlegion.dart';

final impactGrenades = Weapon(
  name: 'Impact Grenades',
  dice: {
    AttackDice.black: 1,
  },
  minRange: 1,
  maxRange: 1,
  keywords: {
    Keyword.impactX: '1',
  },
);
