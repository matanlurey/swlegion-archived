import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final bowcasterWookiee = Upgrade(
  id: 'bowcaster-wookiee',
  name: 'Bowcaster Wookiee',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.wookieeWarriors.toRef()],
  addsMiniature: true,
  weapon: Weapons.bowcaster,
  points: 35,
  waves: const [
    Wave.wWookieWarriorsUnitExpansion,
  ],
);
