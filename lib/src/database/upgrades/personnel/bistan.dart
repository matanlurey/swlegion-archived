import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final bistan = Upgrade(
  id: 'bistan',
  name: 'Bistan',
  type: UpgradeSlot.personnel,
  restrictedToUnit: [Units.rebelPathfinders.toRef()],
  addsMiniature: true,
  weapon: Weapons.bistan,
  points: 32,
  waves: const [
    Wave.wRebelPathfindersUnitExpansion,
  ],
  isExhaustible: true,
  isUnique: true,
);
