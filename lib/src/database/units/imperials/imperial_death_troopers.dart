import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final imperialDeathTroopers = Unit(
  id: 'imperial-death-troopers',
  name: 'Imperial Death Troopers',
  faction: Faction.imperials,
  miniatures: 4,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defense: DefenseDice.red,
  hasDefenseSurge: true,
  attackSurge: AttackSurge.hit,
  speed: 2,
  points: 76,
  upgrades: const {
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.training: 1,
    UpgradeSlot.comms: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.armament: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    Weapons.closeQuartersCombat,
    Weapons.se14NLightBlaster,
    Weapons.e11DBlasterRifle,
  ],
  keywords: {
    UnitKeyword.kDisciplined: 1,
    UnitKeyword.kPrecise: 2,
    UnitKeyword.kReady: 1,
  },
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
  ],
);
