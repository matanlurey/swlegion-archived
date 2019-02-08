import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final imperialOfficer = Unit(
  id: 'imperial-officer',
  name: 'Imperial Officer',
  subTitle: 'Ruthless Commander',
  faction: Faction.imperials,
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
    Weapons.officersRK3BlasterPistol,
  ],
  keywords: {
    UnitKeyword.kSpotter: 1,
    UnitKeyword.kInspire: 1,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
