import 'package:swlegion/swlegion.dart';

import '../../units/scout_troopers.dart' as unit;
import '../../units/scout_troopers_strike_team.dart' as unit;
import '../../weapons/upgrades/dlt_19x_sniper_rifle.dart' as weapon;

final dlt19XSniper = Upgrade(
  id: 'dlt-19-x-sniper',
  name: 'DLT-19x Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.scoutTroopers,
    unit.scoutTroopersStrikeTeam,
  ],
  addsMiniature: true,
  weapon: weapon.dlt19XSniperRifle,
  points: 28,
);
