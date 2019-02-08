import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final moDkPowerHarpoon = Upgrade(
  id: 'mo-dk-power-harpoon',
  name: 'Mo/DK Power Harpoon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.t47Airspeeder.toRef()],
  weapon: Weapons.moDkPowerHarpoon,
  points: 8,
);
