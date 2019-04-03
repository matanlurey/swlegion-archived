import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final jynErso = Unit(
  id: 'jyn-erso',
  name: 'Jyn Erso',
  subTitle: 'Stardust',
  faction: Faction.rebels,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 3,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 130,
  upgrades: const {
    UpgradeSlot.command: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.training: 1,
    UpgradeSlot.armament: 1,
  },
  weapons: [
    Weapons.collapsibleTonfa,
  ],
  keywords: {
    UnitKeyword.kQuickThinking: '',
    UnitKeyword.kDangerSense: 4,
    UnitKeyword.kInfiltrate: '',
    UnitKeyword.kNimble: '',
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
