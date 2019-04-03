import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final a300ShortRangeConfig = Upgrade(
  id: 'a-300-short-range-config',
  name: 'A-300 Short Range Config',
  type: UpgradeSlot.armament,
  restrictedToUnit: [
    Units.rebelPathfinders.toRef(),
  ],
  weapon: Weapons.a300ShortRangeBlasterRifle,
  keywords: {
    UpgradeKeyword.kReconfigure: '',
  },
  points: 6,
  waves: const [
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
