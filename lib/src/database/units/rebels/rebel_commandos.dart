import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelCommandos = Unit(
  id: 'rebel-commandos',
  name: 'Rebel Commandos',
  faction: Faction.rebels,
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
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.training: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
    UpgradeSlot.heavyWeapon: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.a280BlasterRifle,
  ],
  keywords: {
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kScout: 2,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wRebelCommandosUnitExpansion,
  ],
);
