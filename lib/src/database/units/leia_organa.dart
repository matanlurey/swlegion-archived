import 'package:swlegion/swlegion.dart';

import '../weapons/leias_defender_sporting_blaster.dart';
import '../weapons/martial_arts.dart';

final leiaOrgana = Unit(
  id: 'leia-organa',
  name: 'Leia Organa',
  subTitle: 'Fearless and Inventive',
  faction: Faction.lightSide,
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
  upgrades: {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    martialArts,
    leiasDefenderSportingBlaster,
  ],
  keywords: {
    Keyword.takeCoverX: '2',
    Keyword.inspireX: '2',
    Keyword.nimble: '',
    Keyword.sharpshooterX: '2',
  },
);
