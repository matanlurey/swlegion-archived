import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final hh12Stormtrooper = Upgrade(
  id: 'hh-12-stormtrooper',
  name: 'HH-12 Stormtrooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: [Units.stormtroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.hh12RocketLauncher,
  points: 34,
  waves: const [
    Wave.wCore,
    Wave.wStormtroopersUnitExpansion,
  ],
);
