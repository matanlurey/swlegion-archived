import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dtf16 = Upgrade(
  id: 'dt-f-16',
  name: 'DT-F16',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.imperialDeathTroopers.toRef(),
  ],
  weapon: Weapons.dtF16BlasterRifle,
  points: 22,
  addsMiniature: true,
  isUnique: true,
  keywords: {
    UpgradeKeyword.kLeader: '',
  },
  keywordsForUnit: {
    UnitKeyword.kCompel: '',
  },
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
  ],
);
