import 'package:swlegion/swlegion.dart';

import '../weapons/kashyyyk_pistol.dart';
import '../weapons/ryyk_blade.dart';

final wookieWarriors = Unit(
  id: 'wookie-warriors',
  name: 'Wookie Warriors',
  faction: Faction.lightSide,
  miniatures: 3,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 3,
  courage: 2,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.hit,
  speed: 2,
  points: 75,
  upgrades: const {
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    ryykBlade,
    kashyyykPistol,
  ],
  keywords: const {
    UnitKeyword.kCharge: '',
    UnitKeyword.kExpertClimber: '',
    UnitKeyword.kIndomitable: '',
    UnitKeyword.kUnhindered: '',
  },
);
