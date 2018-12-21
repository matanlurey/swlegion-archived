import 'package:swlegion/swlegion.dart';

import '../weapons/1.4_fd_laser_cannon.dart';
import '../weapons/dh_17_blaster_pistol.dart';
import '../weapons/unarmed.dart';

final $1dot4FDLaserCannonTeam = Unit(
  id: '1-4-fd-laser-cannon-team',
  name: '1.4 FD Laser Cannon Team',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.emplacementTrooper,
  wounds: 6,
  courage: 2,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  attackSurge: AttackSurge.hit,
  speed: 0,
  points: 70,
  upgrades: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.generator: 1,
  },
  weapons: [
    unarmed.scale(2),
    dh17BlasterPistol.scale(2),
    $1dot4FDLaserCannon,
  ],
  keywords: {
    Keyword.fullPivot: '',
    Keyword.sentinel: '',
    Keyword.stationary: '',
  },
);
