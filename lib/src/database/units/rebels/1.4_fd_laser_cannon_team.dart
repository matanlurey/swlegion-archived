import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final $1dot4FDLaserCannonTeam = Unit(
  id: '1-4-fd-laser-cannon-team',
  name: '1.4 FD Laser Cannon Team',
  faction: Faction.rebels,
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
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.generator: 1,
  },
  weapons: [
    Weapons.unarmed.scale(2),
    Weapons.dh17BlasterPistol.scale(2),
    Weapons.$1dot4FDLaserCannon,
  ],
  keywords: {
    UnitKeyword.kFullPivot: '',
    UnitKeyword.kSentinel: '',
    UnitKeyword.kStationary: '',
  },
  waves: const [
    Wave.w1dot4FDLaserCannonUnitExpansion,
  ],
);
