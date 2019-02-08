import 'package:swlegion/swlegion.dart';

final grapplingHooks = Upgrade(
  id: 'grappling-hooks',
  name: 'Grappling Hooks',
  type: UpgradeSlot.gear,
  points: 3,
  text: r'''
    You gain Expert Climber.
  ''',
  keywordsForUnit: {
    UnitKeyword.kExpertClimber: '',
  },
  waves: const [
    Wave.wFleetTroopersUnitExpansion,
    Wave.wRebelTroopersUnitExpansion,
    Wave.wStormtroopersUnitExpansion,
    Wave.wSnowtroopersUnitExpansion,
  ],
);
