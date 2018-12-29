import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_flamethrower.dart' as weapon;

final atRtFlamethrower = Upgrade(
  id: 'at-rt-flamethrower',
  name: 'AT-RT Flamethrower',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atRt.toRef()],
  weapon: weapon.atRtFlamethrower,
  points: 25,
);
