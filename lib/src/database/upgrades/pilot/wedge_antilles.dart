import 'package:swlegion/swlegion.dart';

final wedgeAntilles = Upgrade(
  id: 'WEDGE_ANTILLES',
  name: 'Wedge Antilles',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.lightSide,
  restrictedToType: UnitType.repulsorVehicle,
  points: 5,
  isExhaustible: true,
  text: r'''
    Exhaust Action: Until the end of your activation, you gain Full Pivot.
  ''',
);
