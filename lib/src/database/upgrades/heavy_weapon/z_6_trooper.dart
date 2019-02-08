import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final z6Trooper = Upgrade(
  id: 'z-6-trooper',
  name: 'Z-6 Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.rebelTroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.z6RotaryBlaster,
  points: 22,
  waves: const [
    Wave.wRebelTroopersUnitExpansion,
  ],
);
