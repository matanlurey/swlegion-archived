import 'package:swlegion/swlegion.dart';

import '../weapons/ap_11_double_laser_cannon.dart';

final t47Airspeeder = Unit(
  id: 'T_47_AIRSPEEDER',
  name: 'T-47 Airspeeder',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.repulsorVehicle,
  wounds: 7,
  resilience: 5,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 3,
  points: 175,
  upgrades: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 1,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    ap11DoubleLaserCannon,
  ],
  keywords: {
    Keyword.armor: '',
    Keyword.arsenalX: '2',
    Keyword.coverX: '1',
    Keyword.immuneX: 'Blast, Melee',
    Keyword.speederX: '2',
  },
);
