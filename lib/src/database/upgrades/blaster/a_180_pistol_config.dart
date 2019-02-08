import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final a180PistolConfig = Upgrade(
  id: 'a-180-pistol-config',
  name: 'A-180 Pistol Config',
  type: UpgradeSlot.blaster,
  restrictedToUnit: [
    Units.jynErso.toRef(),
  ],
  weapon: Weapons.a180BlasterPistol,
  points: 0,
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
