import 'package:swlegion/swlegion.dart';

final bowcaster = Weapon(name: 'Bowcaster', minRange: 1, maxRange: 3, dice: {
  AttackDice.white: 1,
  AttackDice.red: 1,
}, keywords: {
  Keyword.impactX: '1',
  Keyword.pierceX: '1',
});
