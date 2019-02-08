import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final bowcasterWookie = Upgrade(
  id: 'bowcaster-wookie',
  name: 'Bowcaster Wookie',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.wookieWarriors.toRef()],
  addsMiniature: true,
  weapon: Weapons.bowcaster,
  points: 35,
  waves: const [
    Wave.wWookieWarriorsUnitExpansion,
  ],
);
