import 'package:swlegion/swlegion.dart';

import '../weapons/leias_defender_sporting_blaster.dart';
import '../weapons/martial_arts.dart';

final leiaOrgana = Unit(
  id: 'leia-organa',
  name: 'Leia Organa',
  subTitle: 'Fearless and Inventive',
  faction: Faction.rebels,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 90,
  upgrades: const {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    martialArts,
    leiasDefenderSportingBlaster,
  ],
  keywords: const {
    UnitKeyword.kTakeCover: 2,
    UnitKeyword.kInspire: 2,
    UnitKeyword.kNimble: '',
    UnitKeyword.kSharpshooter: 2,
  },
);
