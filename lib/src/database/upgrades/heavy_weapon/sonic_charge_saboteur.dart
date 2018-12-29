import 'package:swlegion/swlegion.dart';

import '../../units/scout_troopers.dart' as unit;
import '../../units/scout_troopers_strike_team.dart' as unit;
import '../../weapons/upgrades/sonic_charge.dart' as weapon;

final sonicChargeSaboteur = Upgrade(
  id: 'sonic-charge-saboteur',
  name: 'Sonic Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.scoutTroopers.toRef(),
    unit.scoutTroopersStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: weapon.sonicCharge,
  points: 26,
);
