import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelPathfinders = Unit(
  id: 'rebel-pathfinders',
  name: 'Rebel Pathfinders',
  faction: Faction.rebels,
  miniatures: 4,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 1,
  courage: 2,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.hit,
  hasDefenseSurge: true,
  speed: 2,
  points: 60,
  upgrades: const {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.training: 1,
    UpgradeSlot.comms: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.armament: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.a300BlasterRifle,
  ],
  keywords: {
    UnitKeyword.kDangerSense: 3,
    UnitKeyword.kDauntless: '',
    UnitKeyword.kInfiltrate: '',
  },
  waves: const [
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
