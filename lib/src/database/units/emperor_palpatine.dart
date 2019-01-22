import 'package:swlegion/swlegion.dart';

import '../weapons/force_lightning.dart';

import 'imperial_royal_guards.dart';

final emperorPalpatine = Unit(
  id: 'emperor-palpatine',
  name: 'Emperor Palpatine',
  subTitle: 'Ruler of the Galactic Empire',
  faction: Faction.imperials,
  forceAlignment: ForceAlignment.dark,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 5,
  courage: 4,
  defense: DefenseDice.red,
  attackSurge: AttackSurge.critical,
  hasDefenseSurge: true,
  speed: 1,
  points: 210,
  upgrades: const {
    UpgradeSlot.force: 3,
    UpgradeSlot.command: 1,
  },
  weapons: [
    forceLightning,
  ],
  keywords: {
    UnitKeyword.kPullingTheStrings: '',
    UnitKeyword.kEntourage: imperialRoyalGuards.id,
    UnitKeyword.kImmunePierce: '',
    UnitKeyword.kMasterOfTheForce: 2,
  },
);
