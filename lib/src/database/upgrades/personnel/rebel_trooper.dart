import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelTrooper = Upgrade(
  id: 'rebel-trooper',
  name: 'Rebel Trooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [Units.rebelTroopers.toRef()],
  points: 10,
  waves: const [
    Wave.wRebelTroopersUnitExpansion,
  ],
);
