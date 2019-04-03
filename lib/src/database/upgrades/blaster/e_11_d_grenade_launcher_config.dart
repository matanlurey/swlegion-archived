import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final e11DGrenadeLauncherConfig = Upgrade(
  id: 'e-11-d-grenade-launcher-config',
  name: 'E-11D Grenade Launcher Config',
  type: UpgradeSlot.armament,
  restrictedToUnit: [
    Units.imperialDeathTroopers.toRef(),
  ],
  weapon: Weapons.e11DGrenadeLauncher,
  points: 8,
  isExhaustible: true,
  keywords: {
    UpgradeKeyword.kReconfigure: '',
  },
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
  ],
);
