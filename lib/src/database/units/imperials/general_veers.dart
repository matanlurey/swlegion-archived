import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final generalVeers = Unit(
  id: 'general-veers',
  name: 'General Veers',
  subTitle: 'Master Tactician',
  faction: Faction.imperials,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 5,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.red,
  speed: 2,
  points: 80,
  upgrades: const {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.combatExpertise,
    Weapons.veersE11BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kSpotter: 2,
    UnitKeyword.kInspire: 1,
    UnitKeyword.kPrecise: 1,
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wGeneralVeersCommanderExpansion,
  ],
);
