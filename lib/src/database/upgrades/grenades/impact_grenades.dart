import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/impact_grenades.dart' as weapon;

final impactGrenades = Upgrade(
  title: 'Impact Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.impactGrenades,
  points: 5,
);
