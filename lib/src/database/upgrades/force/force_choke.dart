import 'package:swlegion/swlegion.dart';

final forceChoke = Upgrade(
  id: 'force-choke',
  name: 'Force Choke',
  type: UpgradeSlot.force,
  isExhaustible: true,
  restrictedToForceAlignment: ForceAlignment.dark,
  points: 5,
  text: r'''
    Choose an enemy trooper mini at range 1 that is not a commander.
    It suffers 1 wound.
  ''',
);
