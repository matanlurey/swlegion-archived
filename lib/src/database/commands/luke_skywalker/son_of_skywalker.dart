import 'package:swlegion/swlegion.dart';

import '../../units/luke_skywalker.dart' as units;

final sonOfSkywalker = CommandCard(
  id: 'son-of-skywalker',
  name: 'Son of Skywalker',
  unitsActivated: units.lukeSkywalker.name,
  unitsRequired: [units.lukeSkywalker],
  pips: 1,
  text: r'''
    After Luke Skywalker performs his first attack he may perform 1 additional attack.
  ''',
);
