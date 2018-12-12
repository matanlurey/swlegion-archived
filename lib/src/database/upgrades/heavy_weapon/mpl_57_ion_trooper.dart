import 'package:swlegion/swlegion.dart';

import '../../units/rebel_troopers.dart' as unit;
import '../../weapons/upgrades/mpl_57_ion_launcher.dart' as weapon;

final mpl57IonTrooper = Upgrade(
  title: 'MPL-57 Ion Trooper',
  type: UpgradeSlot.heavyWeapon,
  isExhaustible: true,
  restrictedToUnit: unit.rebelTroopers,
  addsMiniature: true,
  weapon: weapon.mpl57IonLauncher,
  points: 32,
);
