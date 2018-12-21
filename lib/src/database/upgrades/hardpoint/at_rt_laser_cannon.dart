import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_laser_cannon.dart' as weapon;

final atRtLaserCannon = Upgrade(
  id: 'at-rt-laser-cannon',
  name: 'AT-RT Laser Cannon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atRt],
  weapon: weapon.atRtLaserCannon,
  points: 35,
);
