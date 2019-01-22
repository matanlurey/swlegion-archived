import 'package:swlegion/swlegion.dart';

import '../weapons/combat_expertise.dart';
import '../weapons/veers_e_11_blaster_rifle.dart';

final generalVeers = Unit(
  id: 'general-veers',
  name: 'General Veers',
  subTitle: 'Master Tactician',
  faction: Faction.darkSide,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 5,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.red,
  speed: 2,
  points: 80,
  upgrades: const {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    combatExpertise,
    veersE11BlasterRifle,
  ],
  keywords: const {
    UnitKeyword.kSpotter: 2,
    UnitKeyword.kInspire: 1,
    UnitKeyword.kPrecise: 1,
    UnitKeyword.kSharpshooter: 1,
  },
);
