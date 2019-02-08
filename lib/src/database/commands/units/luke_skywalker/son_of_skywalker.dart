import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final sonOfSkywalker = CommandCard(
  id: 'son-of-skywalker',
  name: 'Son of Skywalker',
  unitsActivated: Units.lukeSkywalker.name,
  unitsRequired: [Units.lukeSkywalker],
  pips: 1,
  text: r'''
    After Luke Skywalker performs his first attack he may perform 1 additional attack.
  ''',
);
