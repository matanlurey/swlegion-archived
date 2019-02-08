import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final mpl57IonTrooper = Upgrade(
  id: 'mpl-57-ion-trooper',
  name: 'MPL-57 Ion Trooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: [Units.rebelTroopers.toRef()],
  addsMiniature: true,
  weapon: Weapons.mpl57IonLauncher,
  points: 32,
  waves: const [
    Wave.wCore,
    Wave.wRebelTroopersUnitExpansion,
  ],
);
