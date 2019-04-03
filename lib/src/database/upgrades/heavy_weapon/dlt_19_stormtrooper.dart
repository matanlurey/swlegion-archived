import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dlt19Stormtrooper = Upgrade(
  id: 'dlt-19-stormtrooper',
  name: 'DLT-19 Stormtrooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.stormtroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.dlt19HeavyBlasterRifle,
  points: 24,
  waves: const [
    Wave.wCore,
    Wave.wStormtroopersUnitExpansion,
  ],
);
