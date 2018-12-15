import 'package:swlegion/swlegion.dart';

import '../../weapons/upgrades/grenades/concussion_grenades.dart' as weapon;

final concussionGrenades = Upgrade(
  id: 'CONCUSSION_GRENADES',
  name: 'Concussion Grenades',
  type: UpgradeSlot.grenades,
  weapon: weapon.concussionGrenades,
  points: 5,
);
