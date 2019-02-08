import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final t47Airspeeder = Unit(
  id: 't-47-airspeeder',
  name: 'T-47 Airspeeder',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.repulsorVehicle,
  wounds: 7,
  resilience: 5,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 3,
  points: 175,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 1,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    Weapons.ap11DoubleLaserCannon,
  ],
  keywords: const {
    UnitKeyword.kArmor: '',
    UnitKeyword.kArsenal: 2,
    UnitKeyword.kCover: 1,
    UnitKeyword.kImmuneBlast: '',
    UnitKeyword.kImmuneMelee: '',
    UnitKeyword.kSpeeder: 2,
  },
);
