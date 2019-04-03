import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rt97CRiflePintle = Upgrade(
  id: 'rt-97-c-rifle-pintle',
  name: 'RT-97C Rifle Pintle',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.tx225GavWOccupierCombatAssaultTank.toRef()],
  weapon: Weapons.rt97CBlasterRifle,
  points: 14,
  waves: const [
    Wave.wTX225OccupierCombatAssaultTankUnitExpansion,
  ],
);
