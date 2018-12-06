import 'package:swlegion/swlegion.dart';

import '../weapons/anakins_lightsaber.dart';

final lukeSkywalker = Unit(
  name: 'Luke Skywalker',
  subTitle: 'Hero of the Rebellion',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 3,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.red,
  speed: 2,
  points: 160,
  upgrades: {
    UpgradeSlot.force: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    anakinsLightsaber,
  ],
  keywords: {
    Keyword.jumpX: '1',
    Keyword.charge: '',
    Keyword.deflect: '',
    Keyword.immuneX: 'Pierce',
  },
);
