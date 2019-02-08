import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final dlt19XSniper = Upgrade(
  id: 'dlt-19-x-sniper',
  name: 'DLT-19x Sniper',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: [
    Units.scoutTroopers.toRef(),
    Units.scoutTroopersStrikeTeam.toRef(),
  ],
  addsMiniature: true,
  weapon: Weapons.dlt19XSniperRifle,
  points: 28,
  waves: const [
    Wave.wScoutTroopersUnitExpansion,
  ],
);
