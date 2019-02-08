import 'package:swlegion/swlegion.dart';

final reconIntel = Upgrade(
  id: 'recon-intel',
  name: 'Recon Intel',
  type: UpgradeSlot.gear,
  points: 2,
  text: r'''
    You gain Scout 1.
  ''',
  keywordsForUnit: {
    UnitKeyword.kScout: 1,
  },
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
    Wave.wRebelSpecialistsPersonnelExpansion,
    Wave.wImperialRoyalGuardsUnitExpansion,
    Wave.wWookieWarriorsUnitExpansion,
  ],
);
