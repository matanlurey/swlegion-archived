import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_st_mortar_launcher.dart' as weapon;

final atStMortarLauncher = Upgrade(
  id: 'at-st-mortar-launcher',
  name: 'AT-ST Mortar Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.atSt.toRef()],
  weapon: weapon.atStMortarLauncher,
  points: 10,
);
