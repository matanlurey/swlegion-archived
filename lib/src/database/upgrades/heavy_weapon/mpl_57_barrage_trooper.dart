import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final mpl57BarrageTrooper = Upgrade(
  id: 'mpl-57-barrage-trooper',
  name: 'MPL-57 Barrage Trooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: [Units.fleetTroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.mpl57BarrageLauncher,
  points: 33,
  waves: const [
    Wave.wFleetTroopersUnitExpansion,
  ],
);
