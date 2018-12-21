import 'package:swlegion/swlegion.dart';

import '../../units/stormtroopers.dart' as unit;

final stormtrooper = Upgrade(
  id: 'stormtrooper',
  name: 'Stormtrooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [unit.stormtroopers],
  points: 11,
);
