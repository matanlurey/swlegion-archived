import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final rps6RocketGunner = Upgrade(
  id: 'rprs-6-rocket-gunner',
  name: 'RPS-6 Rocket Gunner',
  type: UpgradeSlot.crew,
  restrictedToUnit: [Units.x34Landspeeder.toRef()],
  weapon: Weapons.rps6RocketGunner,
  points: 36,
  waves: const [
    Wave.wX34LandspeederUnitExpansion,
  ],
);
