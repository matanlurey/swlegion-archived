import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final imperialRoyalGuards = Unit(
  id: 'imperial-royal-guards',
  name: 'Imperial Royal Guards',
  faction: Faction.imperials,
  miniatures: 3,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 2,
  courage: 2,
  defense: DefenseDice.red,
  speed: 2,
  points: 75,
  upgrades: const {
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    Weapons.forcePike,
    Weapons.ec17HoldOutBlaster,
  ],
  keywords: const {
    UnitKeyword.kCharge: '',
    UnitKeyword.kDisciplined: 2,
    UnitKeyword.kGuardian: 2,
  },
);
