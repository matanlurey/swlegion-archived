import 'package:swlegion/swlegion.dart';

import '../../units/scout_troopers.dart' as unit;
import '../../weapons/upgrades/sonic_charge.dart' as weapon;

// TODO: Support restrictedToUnit: [A, B].
final sonicChargeSaboteur = Upgrade(
  id: 'SONIC_CHARGE_SABOTEUR',
  name: 'Sonic Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.scoutTroopers,
  addsMiniature: true,
  weapon: weapon.sonicCharge,
  points: 26,
);
