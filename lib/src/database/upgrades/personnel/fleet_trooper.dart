import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final fleetTrooper = Upgrade(
  id: 'fleet-trooper',
  name: 'Fleet Trooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [Units.fleetTroopers.toRef()],
  points: 11,
  waves: const [
    Wave.wFleetTroopersUnitExpansion,
  ],
);
