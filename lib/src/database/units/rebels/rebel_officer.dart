import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rebelOfficer = Unit(
  id: 'rebel-officer',
  name: 'Rebel Officer',
  subTitle: 'Resolute Commander',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 4,
  courage: 2,
  attackSurge: AttackSurge.hit,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 50,
  upgrades: const {
    UpgradeSlot.command: 1,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.officersA180BlasterPistol,
  ],
  keywords: const {
    UnitKeyword.kTakeCover: 1,
    UnitKeyword.kInspire: 1,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
