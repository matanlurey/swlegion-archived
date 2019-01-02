import 'package:swlegion/swlegion.dart';

final targetingScopes = Upgrade(
  id: 'targeting-scopes',
  name: 'Targeting Scopes',
  type: UpgradeSlot.gear,
  points: 6,
  text: r'''
    You gain Precise 1.
  ''',
  keywords: {
    Keyword.preciseX: '1',
  },
);
