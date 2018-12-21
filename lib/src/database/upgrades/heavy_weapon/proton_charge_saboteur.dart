import 'package:swlegion/swlegion.dart';

import '../../units/rebel_commandos.dart' as unit;
import '../../units/rebel_commandos_strike_team.dart' as unit;
import '../../weapons/upgrades/proton_charge.dart' as weapon;

final protonChargeSaboteur = Upgrade(
  id: 'proton-charge-saboteur',
  name: 'Proton Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.rebelCommandos,
    unit.rebelCommandosStrikeTeam,
  ],
  addsMiniature: true,
  weapon: weapon.protonCharge,
  points: 26,
);
