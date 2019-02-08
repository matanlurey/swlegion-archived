import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final atSt = Unit(
  id: 'at-st',
  name: 'AT-ST',
  faction: Faction.imperials,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.groundVehicle,
  wounds: 11,
  resilience: 8,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 195,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 3,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    Weapons.fenceCuttingBlades,
    Weapons.ms4TwinBlasterCannon,
  ],
  keywords: const {
    UnitKeyword.kArmor: '',
    UnitKeyword.kArsenal: 2,
    UnitKeyword.kWeakPointRear: '',
  },
  waves: const [
    Wave.wAtStUnitExpansion,
  ],
);
