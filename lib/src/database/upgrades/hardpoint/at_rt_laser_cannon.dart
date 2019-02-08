import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final atRtLaserCannon = Upgrade(
  id: 'at-rt-laser-cannon',
  name: 'AT-RT Laser Cannon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atRt.toRef()],
  weapon: Weapons.atRtLaserCannon,
  points: 35,
);
