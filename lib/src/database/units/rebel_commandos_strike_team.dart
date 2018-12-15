import 'package:swlegion/swlegion.dart';

import '../weapons/a_280_blaster_rifle.dart';
import '../weapons/unarmed.dart';

final rebelCommandosStrikeTeam = Unit(
  id: 'REBEL_COMMANDOS_STRIKE_TEAM',
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
  upgrades: {
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
  keywords: {
    Keyword.heavyWeaponTeam: '',
    Keyword.lowProfile: '',
    Keyword.scoutX: '2',
    Keyword.sharpshooterX: '1',
  },
);
