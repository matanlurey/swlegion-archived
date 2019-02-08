import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dh447Sniper = Upgrade(
  id: 'dh-447-sniper',
  name: 'DH-447 Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.rebelCommandos.toRef(),
    Units.rebelCommandosStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: Weapons.dh447SniperRifle,
  points: 28,
  waves: const [
    Wave.wRebelCommandosUnitExpansion,
  ],
);
