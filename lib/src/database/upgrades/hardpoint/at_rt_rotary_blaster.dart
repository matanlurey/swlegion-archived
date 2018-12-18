import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_rotary_blaster.dart' as weapon;

final atRtRotaryBlaster = Upgrade(
  id: 'AT_RT_ROTARY_BLASTER',
  name: 'AT-RT Rotary Blaster',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atRt],
  weapon: weapon.atRtRotaryBlaster,
  points: 30,
);
