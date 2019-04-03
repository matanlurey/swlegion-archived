import 'package:swlegion/swlegion.dart';

final firstSergeantArbmab = Upgrade(
  id: 'first-seargant-arbmab',
  name: 'First Sergeant Arbmab',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.imperials,
  restrictedToType: UnitType.groundVehicle,
  points: 5,
  text: r'''
    You gain TACTICAL 1.
  ''',
  isUnique: true,
  keywordsForUnit: {
    UnitKeyword.kTactical: 1,
  },
  waves: const [
    Wave.wTX225OccupierCombatAssaultTankUnitExpansion,
  ],
);
