import 'package:swlegion/swlegion.dart';

import '../weapons/combat_expertise.dart';
import '../weapons/veers_e_11_blaster_rifle.dart';

final generalVeers = Unit(
  name: 'General Veers',
  subTitle: 'Master Tactician',
  faction: Faction.darkSide,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 5,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.red,
  speed: 2,
  points: 80,
  upgrades: {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    combatExpertise,
    veersE11BlasterRifle,
  ],
  keywords: {
    Keyword.spotterX: '2',
    Keyword.inspireX: '1',
    Keyword.preciseX: '1',
    Keyword.sharpshooterX: '1',
  },
);