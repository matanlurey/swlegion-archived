import 'package:swlegion/swlegion.dart';

import '../../units/rebel_troopers.dart' as unit;
import '../../weapons/upgrades/z_6_rotary_blaster_cannon.dart' as weapon;

final z6Trooper = Upgrade(
  name: 'Z-6 Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.rebelTroopers,
  addsMiniature: true,
  weapon: weapon.z6RotaryBlaster,
  points: 22,
);
