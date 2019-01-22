import 'package:swlegion/swlegion.dart';

import '../../units/imperial_royal_guards.dart' as unit;
import '../../weapons/upgrades/electrostaff.dart' as weapon;

final electrostaffGuard = Upgrade(
  id: 'electrostaff-guard',
  name: 'Electrostaff Guard',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [unit.imperialRoyalGuards.toRef()],
  addsMiniature: true,
  weapon: weapon.electrostaff,
  points: 25,
  keywords: const {
    UpgradeKeyword.kSidearmMelee: '',
  },
);
