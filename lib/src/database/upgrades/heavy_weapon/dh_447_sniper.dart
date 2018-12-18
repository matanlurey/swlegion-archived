import 'package:swlegion/swlegion.dart';

import '../../units/rebel_commandos_strike_team.dart' as unit;
import '../../weapons/upgrades/dh_447_sniper_rifle.dart' as weapon;

// TODO: Support restrictedToUnit: [A, B].
final dh447Sniper = Upgrade(
  id: 'DH_447_SNIPER',
  name: 'DH-447 Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.rebelCommandosStrikeTeam,
  addsMiniature: true,
  weapon: weapon.dh447SniperRifle,
  points: 28,
);
