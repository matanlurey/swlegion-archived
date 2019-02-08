import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final atRtRotaryBlaster = Upgrade(
  id: 'at-rt-rotary-blaster',
  name: 'AT-RT Rotary Blaster',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atRt.toRef()],
  weapon: Weapons.atRtRotaryBlaster,
  points: 30,
  waves: const [
    Wave.wCore,
    Wave.wAtRtUnitExpansion,
  ],
);
