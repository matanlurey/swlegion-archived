import 'package:swlegion/swlegion.dart';

import '../weapons/brawl.dart';
import '../weapons/hans_dl_44_blaster_pistol.dart';

final hanSolo = Unit(
  id: 'HAN_SOLO',
  name: 'Han Solo',
  subTitle: 'Unorthodox General',
  faction: Faction.lightSide,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 120,
  upgrades: {
    UpgradeSlot.command: 1,
    UpgradeSlot.elite: 1,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    brawl,
    hansDl44BlasterPistol,
  ],
  keywords: {
    Keyword.takeCoverX: '2',
    Keyword.inspireX: '2',
    Keyword.nimble: '',
    Keyword.sharpshooterX: '2',
  },
);
