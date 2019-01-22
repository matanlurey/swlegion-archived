import 'package:swlegion/swlegion.dart';

import '../weapons/a_280_blaster_rifle.dart';
import '../weapons/unarmed.dart';

final rebelTroopers = Unit(
  id: 'rebel-troopers',
  name: 'Rebel Troopers',
  faction: Faction.lightSide,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 40,
  upgrades: const {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    unarmed,
    a280BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kNimble: '',
  },
);
