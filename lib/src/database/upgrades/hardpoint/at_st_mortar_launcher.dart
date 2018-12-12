import 'package:swlegion/swlegion.dart';

import '../../units/at_st.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_st_mortar_launcher.dart' as weapon;

final atStMortarLauncher = Upgrade(
  name: 'AT-ST Mortar Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atSt,
  weapon: weapon.atStMortarLauncher,
  points: 10,
);
