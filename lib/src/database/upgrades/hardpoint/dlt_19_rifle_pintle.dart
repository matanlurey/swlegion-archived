import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dlt19RiflePintle = Upgrade(
  id: 'dlt-19-rifle-pintle',
  name: 'DLT-19 Rifle Pintle',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.tx225GavWOccupierCombatAssaultTank.toRef()],
  weapon: Weapons.dlt19HeavyBlasterRifle,
  points: 18,
  waves: const [
    Wave.wTX225OccupierCombatAssaultTankUnitExpansion,
  ],
);
