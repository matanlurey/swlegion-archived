import 'package:swlegion/swlegion.dart';

import '../../units/rebel_troopers.dart' as unit;
import '../../weapons/upgrades/z_6_rotary_blaster_cannon.dart' as weapon;

final z6Trooper = Upgrade(
  id: 'z-6-trooper',
  name: 'Z-6 Trooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [unit.rebelTroopers.toRef()],
  addsMiniature: true,
  weapon: weapon.z6RotaryBlaster,
  points: 22,
);
