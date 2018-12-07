import 'package:swlegion/swlegion.dart';

import '../weapons/a_280_blaster_rifle.dart';
import '../weapons/unarmed.dart';

final rebelCommandos = Unit(
  name: 'Rebel Commandos',
  faction: Faction.lightSide,
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
    Keyword.lowProfile: '',
    Keyword.scoutX: '2',
    Keyword.sharpshooterX: '1',
  },
);
