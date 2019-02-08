import 'package:swlegion/swlegion.dart';

final targetingScopes = Upgrade(
  id: 'targeting-scopes',
  name: 'Targeting Scopes',
  type: UpgradeSlot.gear,
  points: 6,
  text: r'''
    You gain Precise 1.
  ''',
  keywordsForUnit: const {
    UnitKeyword.kPrecise: 1,
  },
  waves: const [
    Wave.wCore,
  ],
);
