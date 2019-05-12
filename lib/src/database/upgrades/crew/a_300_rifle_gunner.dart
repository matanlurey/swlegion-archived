import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final a300RifleGunner = Upgrade(
  id: 'a-300-rifle-gunner',
  name: 'A-300 Rifle Gunner',
  type: UpgradeSlot.crew,
  restrictedToUnit: [Units.x34Landspeeder.toRef()],
  weapon: Weapons.a300BlasterRifle,
  points: 9,
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
