import 'package:swlegion/swlegion.dart';

import '../../units/rebel_commandos.dart' as unit;
import '../../units/rebel_commandos_strike_team.dart' as unit;
import '../../weapons/upgrades/dh_447_sniper_rifle.dart' as weapon;

final dh447Sniper = Upgrade(
  id: 'DH_447_SNIPER',
  name: 'DH-447 Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.rebelCommandos,
    unit.rebelCommandosStrikeTeam,
  ],
  addsMiniature: true,
  weapon: weapon.dh447SniperRifle,
  points: 28,
);
