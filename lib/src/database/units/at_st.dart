import 'package:swlegion/swlegion.dart';

import '../weapons/fence_cutting_blades.dart';
import '../weapons/ms_4_twin_blaster_cannon.dart';

final atSt = Unit(
  id: 'at-st',
  name: 'AT-ST',
  faction: Faction.darkSide,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.groundVehicle,
  wounds: 11,
  resilience: 8,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 195,
  upgrades: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 3,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    fenceCuttingBlades,
    ms4TwinBlasterCannon,
  ],
  keywords: {
    Keyword.armor: '',
    Keyword.arsenalX: '2',
    Keyword.weakPointX: '1, Rear',
  },
);
