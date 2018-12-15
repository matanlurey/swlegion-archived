import 'package:swlegion/swlegion.dart';

import '../../units/fleet_troopers.dart' as unit;

final fleetTrooper = Upgrade(
  id: 'FLEET_TROOPER',
  name: 'Fleet Trooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: unit.fleetTroopers,
  points: 11,
);
