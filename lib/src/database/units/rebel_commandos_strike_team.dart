import 'package:swlegion/swlegion.dart';

import '../weapons/a_280_blaster_rifle.dart';
import '../weapons/unarmed.dart';

final rebelCommandosStrikeTeam = Unit(
  id: 'rebel-commandos-strike-team',
  name: 'Rebel Commandos',
  subTitle: 'Strike Team',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 1,
  courage: 2,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.hit,
  hasDefenseSurge: true,
  speed: 2,
  points: 16,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.elite: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    unarmed,
    a280BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kHeavyWeaponTeam: '',
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kScout: 2,
    UnitKeyword.kSharpshooter: 1,
  },
);
