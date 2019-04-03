import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final e11DFocusedFireConfig = Upgrade(
  id: 'e-11-d-focused-fire-config',
  name: 'E-11D Focused Fire Config',
  type: UpgradeSlot.armament,
  restrictedToUnit: [
    Units.imperialDeathTroopers.toRef(),
  ],
  weapon: Weapons.e11DFocusedFire,
  points: 8,
  isExhaustible: true,
  keywords: {
    UpgradeKeyword.kReconfigure: '',
  },
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
  ],
);
