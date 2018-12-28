import 'package:swlegion/swlegion.dart';

import '../weapons/boot_spikes.dart';
import '../weapons/fetts_ee_3_carbine.dart';
import '../weapons/wrist_rocket.dart';

final bobaFett = Unit(
  id: 'boba-fett',
  name: 'Boba Fett',
  subTitle: 'Infamous Bounty Hunter',
  faction: Faction.darkSide,
  isUnique: true,
  miniatures: 1,
  rank: Rank.operative,
  type: UnitType.trooper,
  wounds: 5,
  courage: 3,
  attackSurge: AttackSurge.critical,
  hasDefenseSurge: true,
  defense: DefenseDice.red,
  speed: 3,
  points: 140,
  upgrades: {
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 2,
  },
  weapons: [
    bootSpikes,
    fettsEE3Carbine,
    wristRocket,
  ],
  keywords: {
    Keyword.jumpX: '2',
    Keyword.arsenalX: '2',
    Keyword.bounty: '',
    Keyword.impervious: '',
    Keyword.sharpshooterX: '2',
  },
);
