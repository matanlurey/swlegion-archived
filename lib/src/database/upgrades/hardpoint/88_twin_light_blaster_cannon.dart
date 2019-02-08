import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final $88TwinLightBlasterCannon = Upgrade(
  id: '88-twin-light-blaster-cannon',
  name: '88 Twin Light Blaster Cannon',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.atSt.toRef()],
  weapon: Weapons.$88TwinLightBlasterCannon,
  points: 20,
  waves: const [
    Wave.wAtStUnitExpansion,
  ],
);
