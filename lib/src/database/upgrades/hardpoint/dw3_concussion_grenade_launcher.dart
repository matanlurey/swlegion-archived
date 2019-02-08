import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dw3ConcussionGrenadeLauncher = Upgrade(
  id: 'dw-3-concussion-grenade-launcher',
  name: 'DW-3 Concussion Grenade Launcher',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atSt.toRef()],
  weapon: Weapons.dw3ConcussionGrenadeLauncher,
  points: 15,
  waves: const [
    Wave.wAtStUnitExpansion,
  ],
);
