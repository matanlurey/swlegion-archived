import 'package:swlegion/swlegion.dart';

final lukesDl44BlasterPistol = Weapon(
  name: 'Luke\'s DL-44 Blaster Pistol',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    Keyword.pierceX: '2',
  },
);
