import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/fragmentation_grenades.dart' as weapon;

final fragmentationGrenades = Upgrade(
  id: 'fragmentation-grenades',
  name: 'Fragmentation Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.fragmentationGrenades,
  points: 5,
);
