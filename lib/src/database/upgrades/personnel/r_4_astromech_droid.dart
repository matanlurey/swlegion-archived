import 'package:swlegion/swlegion.dart';

final r4AstromechDroid = Upgrade(
  id: 'r-4-astromech-droid',
  name: 'R4 Astromech Droid',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.imperials,
  points: 9,
  keywords: {
    UpgradeKeyword.kNonCombatant: '',
    UpgradeKeyword.kRepair: '1 (Capacity 2)',
  },
  text: r'''
    Adds a 1 R4 atromech droid mini.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
