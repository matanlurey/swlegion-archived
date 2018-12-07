import 'package:swlegion/swlegion.dart';

import '../weapons/dh_17_blaster_pistol.dart';
import '../weapons/unarmed.dart';

final fleetTroopers = Unit(
  name: 'Fleet Troopers',
  faction: Faction.lightSide,
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
  upgrades: {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    unarmed,
    dh17BlasterPistol,
  ],
  keywords: {
    Keyword.readyX: '1',
  },
);
