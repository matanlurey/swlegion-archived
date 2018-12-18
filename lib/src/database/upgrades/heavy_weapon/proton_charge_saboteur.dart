import 'package:swlegion/swlegion.dart';

import '../../units/rebel_commandos.dart' as unit;
import '../../weapons/upgrades/proton_charge.dart' as weapon;

// TODO: Support restrictedToUnit: [A, B].
final protonChargeSaboteur = Upgrade(
  id: 'PROTON_CHARGE_SABOTEUR',
  name: 'Proton Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.rebelCommandos,
  addsMiniature: true,
  weapon: weapon.protonCharge,
  points: 26,
);
