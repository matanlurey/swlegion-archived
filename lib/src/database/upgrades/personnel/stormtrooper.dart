import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final stormtrooper = Upgrade(
  id: 'stormtrooper',
  name: 'Stormtrooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: [Units.stormtroopers.toRef()],
  points: 11,
  waves: const [
    Wave.wCore,
    Wave.wStormtroopersUnitExpansion,
  ],
);
