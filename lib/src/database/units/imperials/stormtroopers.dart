import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final stormtroopers = Unit(
  id: 'stormtroopers',
  name: 'Stormtroopers',
  faction: Faction.imperials,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defense: DefenseDice.red,
  attackSurge: AttackSurge.hit,
  speed: 2,
  points: 44,
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
    UnitKeyword.kPrecise: 1,
  },
  waves: const [
    Wave.wCore,
    Wave.wStormtroopersUnitExpansion,
  ],
);
