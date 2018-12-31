import 'package:swlegion/swlegion.dart';

import '../../units/wookie_warriors.dart' as unit;
import '../../weapons/upgrades/bowcaster.dart' as weapon;

final bowcasterWookie = Upgrade(
  id: 'bowcaster-wookie',
  name: 'Bowcaster Wookie',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [unit.wookieWarriors.toRef()],
  addsMiniature: true,
  weapon: weapon.bowcaster,
  points: 35,
);
