import 'package:swlegion/swlegion.dart';

import '../../units/fleet_troopers.dart' as unit;
import '../../weapons/upgrades/scatter_gun.dart' as weapon;

final scatterGunTrooper = Upgrade(
  id: 'scatter-gun-trooper',
  name: 'Scatter Gun Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [unit.fleetTroopers.toRef()],
  addsMiniature: true,
  weapon: weapon.scatterGun,
  points: 23,
);
