import 'package:swlegion/swlegion.dart';

final generalWeiss = Upgrade(
  id: 'GENERAL_WEISS',
  name: 'General Weiss',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.darkSide,
  restrictedToType: UnitType.groundVehicle,
  points: 10,
  isExhaustible: true,
  text: r'''
    Exhaust Action: Until the end of your activation, you gain Arsenal 2.
  ''',
);
