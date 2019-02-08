import 'package:swlegion/swlegion.dart';

import '../weapons/a_300_blaster_rifle.dart';
import '../weapons/grappling_claws.dart';

final atRt = Unit(
  id: 'at-rt',
  name: 'AT-RT',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.groundVehicle,
  wounds: 6,
  resilience: 4,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.critical,
  speed: 2,
  points: 55,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 1,
  },
  weapons: [
    grapplingClaws,
    a300BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kCover: 1,
    UnitKeyword.kSpeeder: 1,
  },
);
