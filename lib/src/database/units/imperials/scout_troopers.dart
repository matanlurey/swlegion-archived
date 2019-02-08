import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final scoutTroopers = Unit(
  id: 'scout-troopers',
  name: 'Scout Troopers',
  faction: Faction.imperials,
  miniatures: 4,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 1,
  courage: 2,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 60,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.training: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.ec17HoldOutBlaster,
  ],
  keywords: {
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kScout: 1,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wScoutTroopersUnitExpansion,
  ],
);
