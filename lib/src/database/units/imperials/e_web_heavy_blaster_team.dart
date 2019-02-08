import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final eWebHeavyBlasterTeam = Unit(
  id: 'e-web-heavy-blaster-team',
  name: 'E-Web Heavy Blaster Team',
  faction: Faction.imperials,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.emplacementTrooper,
  wounds: 4,
  courage: 2,
  defense: DefenseDice.red,
  attackSurge: AttackSurge.critical,
  speed: 1,
  points: 55,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.generator: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.e11BlasterRifle,
    Weapons.eWebHeavyBlaster,
  ],
  keywords: {
    UnitKeyword.kFullPivot: '',
    UnitKeyword.kPlodding: '',
    UnitKeyword.kReposition: '',
    UnitKeyword.kSentinel: '',
  },
  waves: const [
    Wave.wEWebHeavyBlasterTeamUnitExpansion,
  ],
);
