import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_flamethrower.dart' as weapon;

final atRtFlamethrower = Upgrade(
  id: 'AT_RT_FLAMETHROWER',
  name: 'AT-RT Flamethrower',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atRt,
  weapon: weapon.atRtFlamethrower,
  points: 25,
);
