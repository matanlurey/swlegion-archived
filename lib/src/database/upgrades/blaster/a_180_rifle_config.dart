import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final a180RifleConfig = Upgrade(
  id: 'a-180-rifle-config',
  name: 'A-180 Rifle Config',
  type: UpgradeSlot.armament,
  restrictedToUnit: [
    Units.jynErso.toRef(),
  ],
  weapon: Weapons.a180BlasterRifle,
  points: 0,
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
