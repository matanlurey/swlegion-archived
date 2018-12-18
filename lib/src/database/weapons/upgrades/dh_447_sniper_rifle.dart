import 'package:swlegion/swlegion.dart';

final dh447SniperRifle = Weapon(
  name: 'DH-447 Sniper Rifle',
  dice: {
    AttackDice.black: 1,
    AttackDice.white: 1,
  },
  minRange: 1,
  keywords: {
    Keyword.highVelocity: '',
    Keyword.pierceX: '1',
  },
);