import 'package:swlegion/swlegion.dart';

final $21BMedicalDroid = Upgrade(
  id: '2-1-b-medical-droid',
  name: '2-1B Medical Droid',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.rebels,
  points: 18,
  keywords: {
    UpgradeKeyword.kNonCombatant: '',
    UpgradeKeyword.kTreat: '1 (Capacity 2)',
  },
  text: r'''
    Adds a 1 2-1B medical droid mini.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
