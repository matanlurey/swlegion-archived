import 'package:swlegion/swlegion.dart';

final overwatch = Upgrade(
  id: 'overwatch',
  name: 'Overwatch',
  type: UpgradeSlot.training,
  points: 4,
  text: r'''
    You gain SENTINEL (Your standby range is 1-3.)
  ''',
  waves: const [
    Wave.wImperialDeathTroopersUnitExpansion,
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
