import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final m45IonBlaster = Upgrade(
  id: 'm-45-ion-blaster',
  name: 'M-45 Ion Blaster',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.x34Landspeeder.toRef()],
  weapon: Weapons.m45IonBlaster,
  isExhaustible: true,
  points: 38,
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
