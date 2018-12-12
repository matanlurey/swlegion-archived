import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/impact_grenades.dart' as weapon;

final impactGrenades = Upgrade(
  name: 'Impact Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.impactGrenades,
  points: 5,
);
