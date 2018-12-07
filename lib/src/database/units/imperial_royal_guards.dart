import 'package:swlegion/swlegion.dart';

import '../weapons/ec_17_hold_out_blaster.dart';
import '../weapons/force_pike.dart';

final imperialRoyalGuards = Unit(
  name: 'Imperial Royal Guards',
  faction: Faction.darkSide,
  miniatures: 3,
  rank: Rank.specialForces,
  type: UnitType.trooper,
  wounds: 2,
  courage: 2,
  defense: DefenseDice.red,
  speed: 2,
  points: 75,
  upgrades: {
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    forcePike,
    ec17HoldOutBlaster,
  ],
  keywords: {
    Keyword.charge: '',
    Keyword.disciplinedX: '2',
    Keyword.guardianX: '2',
  },
);
