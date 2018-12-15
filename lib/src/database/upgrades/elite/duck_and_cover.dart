import 'package:swlegion/swlegion.dart';

final duckAndCover = Upgrade(
  id: 'DUCK_AND_COVER',
  name: 'Duck and Cover',
  type: UpgradeSlot.elite,
  points: 8,
  text: r'''
    When defending from a Ranged Attack, during the Apply Cover and Dodge tokens step, you may assign yourself 1 Suppression token.
  ''',
);
