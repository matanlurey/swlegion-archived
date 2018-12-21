import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/88_twin_light_blaster_cannon.dart'
    as weapon;

final $88TwinLightBlasterCannon = Upgrade(
  id: '88-twin-light-blaster-cannon',
  name: '88 Twin Light Blaster Cannon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atSt],
  weapon: weapon.$88TwinLightBlasterCannon,
  points: 20,
);
