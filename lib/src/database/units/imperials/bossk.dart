import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final bossk = Unit(
  id: 'bossk',
  name: 'Bossk',
  subTitle: 'Trandoshan Hunter',
  faction: Faction.imperials,
  isUnique: true,
  miniatures: 1,
  rank: Rank.operative,
  type: UnitType.trooper,
  wounds: 7,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  speed: 2,
  points: 115,
  upgrades: const {
    UpgradeSlot.training: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.frenzy,
    Weapons.relbyV10MortarRifle,
  ],
  keywords: {
    UnitKeyword.kBounty: '',
    UnitKeyword.kEnrage: 3,
    UnitKeyword.kExpertClimber: '',
    UnitKeyword.kRegenerate: 3,
    UnitKeyword.kUnhindered: '',
  },
  waves: const [
    Wave.wBosskOperativeExpansion,
  ],
);
