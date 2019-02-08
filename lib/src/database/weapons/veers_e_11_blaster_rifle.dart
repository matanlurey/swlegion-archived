import 'package:swlegion/swlegion.dart';

final veersE11BlasterRifle = Weapon(
  name: 'Veers\' E-11 Blaster Rifle',
  minRange: 1,
  maxRange: 3,
  dice: {
    AttackDice.white: 3,
  },
  keywords: const {
    WeaponKeyword.kPierce: 1,
  },
);
