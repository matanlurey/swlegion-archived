import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final a300LongRangeConfig = Upgrade(
  id: 'a-300-long-range-config',
  name: 'A-300 long Range Config',
  type: UpgradeSlot.blaster,
  restrictedToUnit: [
    Units.rebelPathfinders.toRef(),
  ],
  weapon: Weapons.a300LongRangeBlasterRifle,
  keywords: {
    UpgradeKeyword.kReconfigure: '',
  },
  points: 6,
  waves: const [
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
