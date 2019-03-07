import 'package:swlegion/swlegion.dart';

final personalCombatShield = Upgrade(
  id: 'personal-combat-shield',
  name: 'Personal Combat Shield',
  type: UpgradeSlot.gear,
  points: 10,
  text: r'''
    You gain SHIELDED 1 (You have 1 shield token) and RECHARGE 1 (When you
    recover, flip 1 inactive shield token).
  ''',
  keywordsForUnit: {
    UnitKeyword.kShielded: 1,
    UnitKeyword.kRecharge: 1,
  },
  waves: const [
    Wave.wSabineWrenOperativeExpansion,
  ],
);
