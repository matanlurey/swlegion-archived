import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/impact_grenades.dart' as weapon;

final impactGrenades = Upgrade(
  id: 'impact-grenades',
  name: 'Impact Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.impactGrenades,
  points: 5,
  waves: const [
    Wave.wFleetTroopersUnitExpansion,
    Wave.wRebelTroopersUnitExpansion,
    Wave.wSnowtroopersUnitExpansion,
    Wave.wStormtroopersUnitExpansion,
  ],
);
