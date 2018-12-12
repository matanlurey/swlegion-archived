import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/88_twin_light_blaster_cannon.dart'
    as weapon;

final $88TwinLightBlasterCannon = Upgrade(
  title: 'DW-3 Concussion Grenade Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atSt,
  weapon: weapon.$88TwinLightBlasterCannon,
  points: 20,
);
