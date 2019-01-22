import 'package:swlegion/swlegion.dart';

import '../weapons/chewbaccas_bowcaster.dart';
import '../weapons/overpower.dart';

import 'han_solo.dart';

final chewbacca = Unit(
  id: 'chewbacca',
  name: 'Chewbacca',
  subTitle: 'Walking Carpet',
  faction: Faction.lightSide,
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
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    overpower,
    chewbaccasBowcaster,
  ],
  keywords: {
    UnitKeyword.kEnrage: 4,
    UnitKeyword.kExpertClimber: '',
    UnitKeyword.kGuardian: 3,
    UnitKeyword.kTeamwork: hanSolo.id,
  },
);
