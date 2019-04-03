import 'package:swlegion/swlegion.dart';

final krennicsDt29BlasterPistol = Weapon(
  name: 'Krennic\' DT-29 Blaster Pistol',
  minRange: 1,
  maxRange: 2,
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
    AttackDice.white: 1,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
  },
);
