import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final snowtroopers = Unit(
  id: 'snowtroopers',
  name: 'Snowtroopers',
  faction: Faction.imperials,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defense: DefenseDice.red,
  attackSurge: AttackSurge.hit,
  speed: 1,
  points: 48,
  upgrades: const {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.e11BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kSteady: '',
  },
);
