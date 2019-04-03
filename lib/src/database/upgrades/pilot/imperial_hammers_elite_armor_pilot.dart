import 'package:swlegion/swlegion.dart';

final imperialHammersEliteArmorPilot = Upgrade(
  id: 'imperial-hammers-elite-armor-pilot',
  name: 'Imperial Hammers Elite Armor Pilot',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.imperials,
  restrictedToType: UnitType.groundVehicle,
  points: 10,
  text: r'''
    You gain SURGE: HIT.
  ''',
  waves: const [
    Wave.wTX225OccupierCombatAssaultTankUnitExpansion,
  ],
);
