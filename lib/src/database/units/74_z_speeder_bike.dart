import 'package:swlegion/swlegion.dart';

import '../weapons/ax_20_blaster_cannon.dart';
import '../weapons/ec_17_hold_out_blaster.dart';

final $74ZSpeederBikes = Unit(
  id: '74-z-speeder-bikes',
  name: '74-Z Speeder Bikes',
  faction: Faction.imperials,
  miniatures: 2,
  rank: Rank.support,
  type: UnitType.groundVehicle,
  wounds: 3,
  defense: DefenseDice.white,
  attackSurge: AttackSurge.hit,
  hasDefenseSurge: true,
  speed: 3,
  points: 90,
  upgrades: const {
    UpgradeSlot.comms: 1,
  },
  weapons: [
    ec17HoldOutBlaster,
    ax20BlasterCannon,
  ],
  keywords: const {
    UnitKeyword.kCover: 1,
    UnitKeyword.kSpeeder: 1,
  },
);
