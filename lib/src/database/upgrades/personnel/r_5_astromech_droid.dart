import 'package:swlegion/swlegion.dart';

final r5AstromechDroid = Upgrade(
  id: 'r-5-astromech-droid',
  name: 'R5 Astromech Droid',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.rebels,
  points: 8,
  keywords: {
    UpgradeKeyword.kNonCombatant: '',
    UpgradeKeyword.kRepair: '1 (Capacity 2)',
  },
  text: r'''
    Adds a 1 R5 atromech droid mini.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
