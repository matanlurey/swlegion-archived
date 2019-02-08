import 'package:swlegion/swlegion.dart';

final forcePush = Upgrade(
  id: 'force-push',
  name: 'Force Push',
  type: UpgradeSlot.force,
  isExhaustible: true,
  points: 10,
  text: r'''
    Action: Choose an enemy trooper unit at range 1.
    Perform a speed-1 move with that unit, even if it is engaged.
  ''',
  waves: const [
    Wave.wCore,
  ],
);
