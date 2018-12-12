import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/dw_3_concussion_grenade_launcher.dart'
    as weapon;

final dw3ConcussionGrenadeLauncher = Upgrade(
  name: 'DW-3 Concussion Grenade Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atSt,
  weapon: weapon.dw3ConcussionGrenadeLauncher,
  points: 15,
);
