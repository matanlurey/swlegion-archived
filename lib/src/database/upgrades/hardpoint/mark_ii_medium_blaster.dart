import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final markIIMediumBlaster = Upgrade(
  id: 'mark-ii-medium-blaster',
  name: 'Mark II Medium Blaster',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.x34Landspeeder.toRef()],
  weapon: Weapons.markIIMediumBlaster,
  points: 34,
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
