import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

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
    Weapons.forceLightning,
  ],
  keywords: {
    UnitKeyword.kPullingTheStrings: '',
    UnitKeyword.kEntourage: Units.imperialRoyalGuards.toRef(),
    UnitKeyword.kImmunePierce: '',
    UnitKeyword.kMasterOfTheForce: 2,
  },
);
