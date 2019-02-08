import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final scatterGunTrooper = Upgrade(
  id: 'scatter-gun-trooper',
  name: 'Scatter Gun Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.fleetTroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.scatterGun,
  points: 23,
);
