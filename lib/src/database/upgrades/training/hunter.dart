import 'package:swlegion/swlegion.dart';

final hunter = Upgrade(
  id: 'hunter',
  name: 'Hunter',
  type: UpgradeSlot.training,
  points: 6,
  text: r'''
    While attacking a wounded trooper unit, during the Roll Attack Dice step, you may gain 1 aim token.
  ''',
  waves: const [
    Wave.wBobaFettOperativeExpansion,
    Wave.wImperialRoyalGuardsUnitExpansion,
    Wave.wChewbaccaOperativeExpansion,
    Wave.wWookieWarriorsUnitExpansion,
  ],
);
