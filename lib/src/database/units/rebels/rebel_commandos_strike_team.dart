import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelCommandosStrikeTeam = Unit(
  id: 'rebel-commandos-strike-team',
  name: 'Rebel Commandos',
  subTitle: 'Strike Team',
  faction: Faction.rebels,
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
  keywords: const {
    UnitKeyword.kHeavyWeaponTeam: '',
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kScout: 2,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wRebelCommandosUnitExpansion,
  ],
);
