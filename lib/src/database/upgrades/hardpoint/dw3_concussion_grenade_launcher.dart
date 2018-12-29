import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/dw_3_concussion_grenade_launcher.dart'
    as weapon;

final dw3ConcussionGrenadeLauncher = Upgrade(
  id: 'dw-3-concussion-grenade-launcher',
  name: 'DW-3 Concussion Grenade Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atSt.toRef()],
  weapon: weapon.dw3ConcussionGrenadeLauncher,
  points: 15,
);
