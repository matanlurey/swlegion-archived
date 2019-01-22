import 'package:swlegion/swlegion.dart';

import '../weapons/boot_spikes.dart';
import '../weapons/fetts_ee_3_carbine.dart';
import '../weapons/wrist_rocket.dart';

final bobaFett = Unit(
  id: 'boba-fett',
  name: 'Boba Fett',
  subTitle: 'Infamous Bounty Hunter',
  faction: Faction.imperials,
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
  upgrades: const {
    UpgradeSlot.elite: 2,
    UpgradeSlot.gear: 2,
  },
  weapons: [
    bootSpikes,
    fettsEE3Carbine,
    wristRocket,
  ],
  keywords: const {
    UnitKeyword.kJump: 2,
    UnitKeyword.kArsenal: 2,
    UnitKeyword.kBounty: '',
    UnitKeyword.kImpervious: '',
    UnitKeyword.kSharpshooter: 2,
  },
);
