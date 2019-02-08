import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final sonicChargeSaboteur = Upgrade(
  id: 'sonic-charge-saboteur',
  name: 'Sonic Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.scoutTroopers.toRef(),
    Units.scoutTroopersStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: Weapons.sonicCharge,
  points: 26,
);
