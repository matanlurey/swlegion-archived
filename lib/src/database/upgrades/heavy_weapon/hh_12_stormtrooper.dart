import 'package:swlegion/swlegion.dart';

import '../../units/stormtroopers.dart' as unit;
import '../../weapons/upgrades/hh_12_rocket_launcher.dart' as weapon;

final hh12Stormtrooper = Upgrade(
  name: 'HH-12 Stormtrooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: unit.stormtroopers,
  addsMiniature: true,
  weapon: weapon.hh12RocketLauncher,
  points: 34,
);
