import 'package:swlegion/swlegion.dart';

final relbyV10MortarRifle = Weapon(
  name: 'Relby-v10 Mortar Rifle',
  minRange: 2,
  maxRange: 4,
  dice: {
    AttackDice.red: 1,
    AttackDice.white: 4,
  },
  keywords: {
    WeaponKeyword.kPierce: 1,
    WeaponKeyword.kSuppressive: '',
  },
);
