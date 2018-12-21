import 'package:swlegion/swlegion.dart';

import '../weapons/e_11_blaster_rifle.dart';
import '../weapons/e_web_heavy_blaster.dart';
import '../weapons/unarmed.dart';

final eWebHeavyBlasterTeam = Unit(
  id: 'e-web-heavy-blaster-team',
  name: 'E-Web Heavy Blaster Team',
  faction: Faction.darkSide,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.emplacementTrooper,
  wounds: 4,
  courage: 2,
  defense: DefenseDice.red,
  attackSurge: AttackSurge.critical,
  speed: 1,
  points: 55,
  upgrades: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.generator: 1,
  },
  weapons: [
    unarmed,
    e11BlasterRifle,
    eWebHeavyBlaster,
  ],
  keywords: {
    Keyword.fullPivot: '',
    Keyword.plodding: '',
    Keyword.reposition: '',
    Keyword.sentinel: '',
  },
);
