import 'package:swlegion/swlegion.dart';

final anakinsLightsaber = Weapon.melee(
  name: 'Anakin\'s Lightsaber',
  dice: {
    AttackDice.black: 6,
  },
  keywords: {
    Keyword.impactX: '2',
    Keyword.pierceX: '2',
  },
);
