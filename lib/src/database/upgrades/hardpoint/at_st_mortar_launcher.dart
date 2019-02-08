import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final atStMortarLauncher = Upgrade(
  id: 'at-st-mortar-launcher',
  name: 'AT-ST Mortar Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atSt.toRef()],
  weapon: Weapons.atStMortarLauncher,
  points: 10,
);
