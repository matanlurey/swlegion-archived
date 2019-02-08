import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final electrostaffGuard = Upgrade(
  id: 'electrostaff-guard',
  name: 'Electrostaff Guard',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [Units.imperialRoyalGuards.toRef()],
  addsMiniature: true,
  weapon: Weapons.electrostaff,
  points: 25,
  keywords: const {
    UpgradeKeyword.kSidearmMelee: '',
  },
  waves: const [
    Wave.wImperialRoyalGuardsUnitExpansion,
  ],
);
