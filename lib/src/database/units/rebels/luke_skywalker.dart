import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final lukeSkywalker = Unit(
  id: 'luke-skywalker',
  name: 'Luke Skywalker',
  subTitle: 'Hero of the Rebellion',
  faction: Faction.rebels,
  forceAlignment: ForceAlignment.light,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 3,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.red,
  speed: 2,
  points: 160,
  upgrades: const {
    UpgradeSlot.force: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.anakinsLightsaber,
  ],
  keywords: const {
    UnitKeyword.kJump: 1,
    UnitKeyword.kCharge: '',
    UnitKeyword.kDeflect: '',
    UnitKeyword.kImmunePierce: '',
  },
);
