import 'package:swlegion/swlegion.dart';

import '../../units/luke_skywalker.dart' as units;

final myAllyIsTheForce = CommandCard(
  id: 'my-ally-is-the-force',
  name: 'My Ally is the Force',
  unitsActivated: '2 Troopers',
  unitsRequired: [units.lukeSkywalker],
  pips: 2,
  text: r'''
    When a friendly trooper unit is issued an order, it gains 1 dodge token.
  ''',
);
