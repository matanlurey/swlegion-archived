import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final flametrooper = Upgrade(
  id: 'flametrooper',
  name: 'Flametrooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.snowtroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.flamethrower,
  points: 20,
  waves: const [
    Wave.wSnowtroopersUnitExpansion,
  ],
);
