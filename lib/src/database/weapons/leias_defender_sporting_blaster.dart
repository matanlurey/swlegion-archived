import 'package:swlegion/swlegion.dart';

final leiasDefenderSportingBlaster = Weapon(
  name: 'Leia\'s Defender Sporting Blaster',
  dice: {
    AttackDice.black: 3,
  },
  minRange: 1,
  maxRange: 2,
  keywords: {
    Keyword.pierceX: '1',
  },
);
