import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final fleetTroopers = Unit(
  id: 'fleet-troopers',
  name: 'Fleet Troopers',
  faction: Faction.rebels,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  attackSurge: AttackSurge.hit,
  speed: 2,
  points: 44,
  upgrades: const {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.dh17BlasterPistol,
  ],
  keywords: const {
    UnitKeyword.kReady: 1,
  },
);
