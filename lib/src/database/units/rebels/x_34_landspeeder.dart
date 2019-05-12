import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final x34Landspeeder = Unit(
  id: 'x-34-landspeeder',
  name: 'X-34 Landspeeder',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.repulsorVehicle,
  wounds: 6,
  resilience: 4,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 3,
  points: 75,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.crew: 2,
    UpgradeSlot.hardPoint: 1,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    Weapons.dh17BlasterPistol,
  ],
  keywords: {
    UnitKeyword.kArmor: 2,
    UnitKeyword.kArsenal: 3,
    UnitKeyword.kCover: 1,
    UnitKeyword.kLightTransport1Open: '',
    UnitKeyword.kSpeeder: 1,
  },
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
