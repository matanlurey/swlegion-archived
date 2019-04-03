import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dlt19DTrooper = Upgrade(
  id: 'dlt-19-d-trooper',
  name: 'DLT-19D Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.imperialDeathTroopers.toRef(),
  ],
  weapon: Weapons.dlt19DHeavyBlasterRifle,
  points: 34,
  addsMiniature: true,
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
  ],
);
