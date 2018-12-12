import 'package:swlegion/swlegion.dart';

final moDkPowerHarpoon = Weapon(
  name: 'Mo/Dk Power Harpoon',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    Keyword.impactX: '1',
    Keyword.fixedX: 'Rear',
    Keyword.towCable: '',
  },
);
