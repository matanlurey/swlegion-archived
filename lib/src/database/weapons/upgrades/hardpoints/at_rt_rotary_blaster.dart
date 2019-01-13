import 'package:swlegion/swlegion.dart';

final atRtRotaryBlaster = Weapon(
  name: 'AT-RT Rotary Blaster',
  dice: {
    AttackDice.black: 5,
  },
  minRange: 1,
  maxRange: 3,
  keywords: const {
    WeaponKeyword.kFixedFront: '',
  },
);
