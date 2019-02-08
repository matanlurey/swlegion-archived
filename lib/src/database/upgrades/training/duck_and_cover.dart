import 'package:swlegion/swlegion.dart';

final duckAndCover = Upgrade(
  id: 'duck-and-cover',
  name: 'Duck and Cover',
  type: UpgradeSlot.training,
  points: 8,
  text: r'''
    When defending from a Ranged Attack, during the Apply Cover and Dodge tokens step, you may assign yourself 1 Suppression token.
  ''',
  waves: const [
    Wave.wBobaFettOperativeExpansion,
    Wave.wImperialDeathTroopersUnitExpansion,
    Wave.wScoutTroopersUnitExpansion,
    Wave.wHanSoloCommanderExpansion,
    Wave.wJynErsoCommanderExpansion,
    Wave.wRebelCommandosUnitExpansion,
    Wave.wRebelPathfindersUnitExpansion,
  ],
);
