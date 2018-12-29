import 'package:swlegion/swlegion.dart';

import '../../units/snowtroopers.dart' as unit;
import '../../weapons/upgrades/flamethrower.dart' as weapon;

final flametrooper = Upgrade(
  id: 'flametrooper',
  name: 'Flametrooper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [unit.snowtroopers.toRef()],
  addsMiniature: true,
  weapon: weapon.flamethrower,
  points: 20,
);
