import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_laser_cannon.dart' as weapon;

final atRtLaserCannon = Upgrade(
  name: 'AT-RT Rotary Blaster',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atRt,
  weapon: weapon.atRtLaserCannon,
  points: 35,
);
