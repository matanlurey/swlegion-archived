import 'package:swlegion/swlegion.dart';

import '../../units/scout_troopers.dart' as unit;
import '../../units/scout_troopers_strike_team.dart' as unit;
import '../../weapons/upgrades/sonic_charge.dart' as weapon;

final sonicChargeSaboteur = Upgrade(
  id: 'SONIC_CHARGE_SABOTEUR',
  name: 'Sonic Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.scoutTroopers,
    unit.scoutTroopersStrikeTeam,
  ],
  addsMiniature: true,
  weapon: weapon.sonicCharge,
  points: 26,
);
