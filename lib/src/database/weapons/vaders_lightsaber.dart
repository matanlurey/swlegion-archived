import 'package:swlegion/swlegion.dart';

final vadersLightsaber = Weapon.melee(
  name: 'Vader\'s Lightsaber',
  dice: {
    AttackDice.red: 6,
  },
  keywords: {
    Keyword.impactX: '3',
    Keyword.pierceX: '3',
  },
);
