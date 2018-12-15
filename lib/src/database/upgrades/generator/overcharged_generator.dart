import 'package:swlegion/swlegion.dart';

final overchargedGenerator = Upgrade(
  id: 'OVERCHARGED_GENERATOR',
  name: 'Overcharged Generator',
  type: UpgradeSlot.generator,
  isExhaustible: true,
  points: 10,
  text: r'''
    While performing a ranged attack with a weapon that has FIXED, add 1 black attack dice and apply IMPACT 1 to your attack pool.
  ''',
);
