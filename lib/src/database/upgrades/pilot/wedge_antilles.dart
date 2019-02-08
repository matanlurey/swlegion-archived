import 'package:swlegion/swlegion.dart';

final wedgeAntilles = Upgrade(
  id: 'wedge-antilles',
  name: 'Wedge Antilles',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.rebels,
  restrictedToType: UnitType.repulsorVehicle,
  points: 5,
  isExhaustible: true,
  text: r'''
    Exhaust Action: Until the end of your activation, you gain Full Pivot.
  ''',
  keywordsForUnit: {
    UnitKeyword.kFullPivot: '',
  },
  waves: const [
    Wave.wT47AirspeederUnitExpansion,
  ],
);
