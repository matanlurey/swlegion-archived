import 'package:swlegion/swlegion.dart';

final forceReflexes = Upgrade(
  id: 'force-reflexes',
  name: 'Force Reflexes',
  type: UpgradeSlot.force,
  isExhaustible: true,
  points: 15,
  text: r'''
    Action: Gain 1 dodge token.
  ''',
  waves: const [
    Wave.wCore,
  ],
);
