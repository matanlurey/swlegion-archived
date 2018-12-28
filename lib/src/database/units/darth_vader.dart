import 'package:swlegion/swlegion.dart';

import '../weapons/vaders_lightsaber.dart';

final darthVader = Unit(
  id: 'darth-vader',
  name: 'Darth Vader',
  subTitle: 'Dark Lord of the Sith',
  faction: Faction.darkSide,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 8,
  defense: DefenseDice.red,
  speed: 1,
  points: 200,
  upgrades: {
    UpgradeSlot.force: 3,
  },
  weapons: [
    vadersLightsaber,
  ],
  keywords: {
    Keyword.deflect: '',
    Keyword.immuneX: 'Pierce',
    Keyword.masterOfTheForceX: '1',
    Keyword.relentless: '',
  },
);
