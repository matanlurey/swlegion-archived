import 'package:swlegion/swlegion.dart';

import '../../units/stormtroopers.dart' as unit;
import '../../weapons/upgrades/dlt_19_heavy_blaster_rifle.dart' as weapon;

final dlt19Stormtrooper = Upgrade(
  title: 'DLT-19 Stormtrooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.stormtroopers,
  addsMiniature: true,
  weapon: weapon.dlt19HHeavyBlasterRifle,
  points: 24,
);
