import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

import 'han_solo.dart';

final chewbacca = Unit(
  id: 'chewbacca',
  name: 'Chewbacca',
  subTitle: 'Walking Carpet',
  faction: Faction.rebels,
  isUnique: true,
  miniatures: 1,
  rank: Rank.operative,
  type: UnitType.trooper,
  wounds: 9,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  speed: 2,
  points: 110,
  upgrades: const {
    UpgradeSlot.training: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.overpower,
    Weapons.chewbaccasBowcaster,
  ],
  keywords: {
    UnitKeyword.kEnrage: 4,
    UnitKeyword.kExpertClimber: '',
    UnitKeyword.kGuardian: 3,
    UnitKeyword.kTeamwork: hanSolo.id,
  },
  waves: const [
    Wave.wChewbaccaOperativeExpansion,
  ],
);
