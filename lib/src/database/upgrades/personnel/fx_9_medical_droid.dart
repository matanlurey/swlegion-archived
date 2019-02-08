import 'package:swlegion/swlegion.dart';

final fx9MedicalDroid = Upgrade(
  id: 'fx-9-medical-droid',
  name: 'FX-9 Medical Droid',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.imperials,
  points: 19,
  keywords: {
    UpgradeKeyword.kNonCombatant: '',
    UpgradeKeyword.kTreat: '1 (Capacity 2)',
  },
  text: r'''
    Adds a 1 FX-9 medical droid mini.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
