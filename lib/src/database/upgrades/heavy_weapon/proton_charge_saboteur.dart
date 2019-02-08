import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final protonChargeSaboteur = Upgrade(
  id: 'proton-charge-saboteur',
  name: 'Proton Charge Saboteur',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.rebelCommandos.toRef(),
    Units.rebelCommandosStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: Weapons.protonCharge,
  points: 26,
  waves: const [
    Wave.wRebelCommandosUnitExpansion,
  ],
);
