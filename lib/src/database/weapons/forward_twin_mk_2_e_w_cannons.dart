import 'package:swlegion/swlegion.dart';

final forwardTwinMk2EWCannons = Weapon(
  name: 'Forward Twin MK 2E/W Cannons',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
  },
  keywords: {
    WeaponKeyword.kFixedFront: '',
    WeaponKeyword.kSuppressive: '',
  },
);
