import 'package:swlegion/swlegion.dart';

import '../weapons/a_300_blaster_rifle.dart';
import '../weapons/grappling_claws.dart';

final atRt = Unit(
  id: 'AT_RT',
  name: 'AT-RT',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.groundVehicle,
  wounds: 6,
  resilience: 4,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.critical,
  speed: 2,
  points: 55,
  upgrades: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 1,
  },
  weapons: [
    grapplingClaws,
    a300BlasterRifle,
  ],
  keywords: {
    Keyword.coverX: '1',
    Keyword.speederX: '1',
  },
);
