import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final atRtFlamethrower = Upgrade(
  id: 'at-rt-flamethrower',
  name: 'AT-RT Flamethrower',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atRt.toRef()],
  weapon: Weapons.atRtFlamethrower,
  points: 25,
  waves: const [
    Wave.wCore,
    Wave.wAtRtUnitExpansion,
  ],
);
