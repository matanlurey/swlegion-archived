import 'package:swlegion/swlegion.dart';

import '../../units/snowtroopers.dart' as unit;

final snowtrooper = Upgrade(
  id: 'snowtrooper',
  name: 'Snowtrooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [unit.snowtroopers.toRef()],
  points: 12,
);
