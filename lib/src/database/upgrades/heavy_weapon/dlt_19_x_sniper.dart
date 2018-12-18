import 'package:swlegion/swlegion.dart';

import '../../units/scout_troopers_strike_team.dart' as unit;
import '../../weapons/upgrades/dlt_19x_sniper_rifle.dart' as weapon;

// TODO: Support restrictedToUnit: [A, B].
final dlt19XSniper = Upgrade(
  id: 'DLT_19_X_SNIPER',
  name: 'DLT-19x Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.scoutTroopersStrikeTeam,
  addsMiniature: true,
  weapon: weapon.dlt19XSniperRifle,
  points: 28,
);
