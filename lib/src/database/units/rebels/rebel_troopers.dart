import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelTroopers = Unit(
  id: 'rebel-troopers',
  name: 'Rebel Troopers',
  faction: Faction.rebels,
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
    Weapons.unarmed,
    Weapons.a280BlasterRifle,
  ],
  keywords: {
    UnitKeyword.kNimble: '',
  },
  waves: const [
    Wave.wCore,
    Wave.wRebelTroopersUnitExpansion,
  ],
);
