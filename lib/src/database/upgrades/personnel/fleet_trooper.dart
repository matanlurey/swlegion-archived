import 'package:swlegion/swlegion.dart';

import '../../units/fleet_troopers.dart' as unit;

final fleetTrooper = Upgrade(
  id: 'fleet-trooper',
  name: 'Fleet Trooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [unit.fleetTroopers.toRef()],
  points: 11,
);
