import 'package:swlegion/swlegion.dart';

final rebelOfficer = Upgrade(
  id: 'rebel-officer',
  name: 'Rebel Officer',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.rebels,
  points: 19,
  keywordsForUnit: {
    UnitKeyword.kInspire: 1,
    UnitKeyword.kLeader: '',
  },
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
