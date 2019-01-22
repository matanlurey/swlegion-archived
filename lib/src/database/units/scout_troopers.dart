import 'package:swlegion/swlegion.dart';

import '../weapons/ec_17_hold_out_blaster.dart';
import '../weapons/unarmed.dart';

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
    UpgradeSlot.elite: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    unarmed,
    ec17HoldOutBlaster,
  ],
  keywords: const {
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kScout: 1,
    UnitKeyword.kSharpshooter: 1,
  },
);
