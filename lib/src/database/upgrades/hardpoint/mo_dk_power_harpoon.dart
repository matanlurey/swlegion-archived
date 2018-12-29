import 'package:swlegion/swlegion.dart';

import '../../units/t_47_airspeeder.dart' as unit;
import '../../weapons/upgrades/hardpoints/mo_dk_power_harpoon.dart' as weapon;

final moDkPowerHarpoon = Upgrade(
  id: 'mo-dk-power-harpoon',
  name: 'Mo/DK Power Harpoon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [unit.t47Airspeeder.toRef()],
  weapon: weapon.moDkPowerHarpoon,
  points: 8,
);
