import 'package:swlegion/swlegion.dart';

final chewbaccasBowcaster =
    Weapon(name: 'Chewbacca\'s Bowcaster', minRange: 1, maxRange: 3, dice: {
  AttackDice.white: 2,
  AttackDice.red: 2,
}, keywords: {
  Keyword.impactX: '1',
  Keyword.pierceX: '1',
});
