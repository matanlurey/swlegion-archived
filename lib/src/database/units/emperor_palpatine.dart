import 'package:swlegion/swlegion.dart';

import '../weapons/force_lightning.dart';

final emperorPalpatine = Unit(
  name: 'Emperor Palpatine',
  subTitle: 'Ruler of the Galactic Empire',
  faction: Faction.darkSide,
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
  upgrades: {
    UpgradeSlot.force: 3,
    UpgradeSlot.command: 1,
  },
  weapons: [
    forceLightning,
  ],
  keywords: {
    Keyword.pullingTheStrings: '',
    Keyword.entourageX: 'Imperial Royal Guards',
    Keyword.immuneX: 'Pierce',
    Keyword.masterOfTheForceX: '2',
  },
);
