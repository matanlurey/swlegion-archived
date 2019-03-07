import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final pao = Upgrade(
  id: 'pao',
  name: 'Pao',
  type: UpgradeSlot.personnel,
  restrictedToUnit: [Units.rebelPathfinders.toRef()],
  addsMiniature: true,
  weapon: Weapons.pao,
  keywordsForUnit: {
    UnitKeyword.kInspire: 1,
    UnitKeyword.kLeader: '',
  },
  points: 22,
  isUnique: true,
  waves: const [
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
