import 'package:swlegion/swlegion.dart';

final saberThrow = Upgrade(
  id: 'SABER_THROW',
  name: 'Saber Throw',
  type: UpgradeSlot.force,
  isExhaustible: true,
  points: 10,
  text: r'''
    Action: Choose 1 of your melee weapons. Perform a ranged attack with that weapon against an enemy at range 1-2, using half of that weapon's dice, rounded up. This is treated as an attack action.
  ''',
);
