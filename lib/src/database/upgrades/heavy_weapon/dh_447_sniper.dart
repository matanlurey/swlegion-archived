import 'package:swlegion/swlegion.dart';

import '../../units/rebel_commandos.dart' as unit;
import '../../units/rebel_commandos_strike_team.dart' as unit;
import '../../weapons/upgrades/dh_447_sniper_rifle.dart' as weapon;

final dh447Sniper = Upgrade(
  id: 'dh-447-sniper',
  name: 'DH-447 Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    unit.rebelCommandos.toRef(),
    unit.rebelCommandosStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: weapon.dh447SniperRifle,
  points: 28,
);
