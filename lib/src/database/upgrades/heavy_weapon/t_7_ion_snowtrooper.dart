import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final t7IonSnowtrooper = Upgrade(
  id: 't-7-ion-snowtrooper',
  name: 'T-7 Ion Snowtrooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: [Units.snowtroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.t7IonDisrupterRifle,
  points: 34,
  waves: const [
    Wave.wSnowtroopersUnitExpansion,
  ],
);
