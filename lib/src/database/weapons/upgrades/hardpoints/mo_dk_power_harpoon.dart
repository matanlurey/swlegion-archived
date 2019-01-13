import 'package:swlegion/swlegion.dart';

final moDkPowerHarpoon = Weapon(
  name: 'Mo/Dk Power Harpoon',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: const {
    WeaponKeyword.kImpact: 1,
    WeaponKeyword.kFixedRear: '',
    WeaponKeyword.kTowCable: '',
  },
);
