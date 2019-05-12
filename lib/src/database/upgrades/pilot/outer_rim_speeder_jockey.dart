import 'package:swlegion/swlegion.dart';

final outerRimSpeederJockey = Upgrade(
  id: 'outer-rim-speeder-jockey',
  name: 'Outer Rim Speeder Jockey',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.rebels,
  restrictedToType: UnitType.repulsorVehicle,
  points: 10,
  keywordsForUnit: {
    UnitKeyword.kCover: 1,
  },
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
