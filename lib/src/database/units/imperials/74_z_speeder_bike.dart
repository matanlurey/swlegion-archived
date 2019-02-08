import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

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
    Weapons.ec17HoldOutBlaster,
    Weapons.ax20BlasterCannon,
  ],
  keywords: const {
    UnitKeyword.kCover: 1,
    UnitKeyword.kSpeeder: 1,
  },
);
