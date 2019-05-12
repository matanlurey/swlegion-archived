import 'package:swlegion/swlegion.dart';

final ryderAzadi = Upgrade(
  id: 'ryder-azadi',
  name: 'Ryder Azadi',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.rebels,
  restrictedToType: UnitType.repulsorVehicle,
  points: 5,
  isUnique: true,
  text: r'''
    While perorming a movie, increease or decrease your maximum speed by 1.
  ''',
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
