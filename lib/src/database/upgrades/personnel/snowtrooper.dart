import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final snowtrooper = Upgrade(
  id: 'snowtrooper',
  name: 'Snowtrooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [Units.snowtroopers.toRef()],
  points: 12,
  waves: const [
    Wave.wSnowtroopersUnitExpansion,
  ],
);
