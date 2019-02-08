import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dlt19Stormtrooper = Upgrade(
  id: 'dlt-19-stormtrooper',
  name: 'DLT-19 Stormtrooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.stormtroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.dlt19HHeavyBlasterRifle,
  points: 24,
);
