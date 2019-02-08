import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/concussion_grenades.dart' as weapon;

final concussionGrenades = Upgrade(
  id: 'concussion-grenades',
  name: 'Concussion Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.concussionGrenades,
  points: 5,
  waves: const [
    Wave.wCore,
  ],
);
