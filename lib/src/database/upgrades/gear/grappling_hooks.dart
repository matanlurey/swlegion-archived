import 'package:swlegion/swlegion.dart';

final grapplingHooks = Upgrade(
  id: 'grappling-hooks',
  name: 'Grappling Hooks',
  type: UpgradeSlot.gear,
  points: 3,
  text: r'''
    You gain Expert Climber.
  ''',
  keywordsForUnit: const {
    UnitKeyword.kExpertClimber: '',
  },
);
