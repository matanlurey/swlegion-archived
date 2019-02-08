import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final returnOfTheJedi = CommandCard(
  id: 'return-of-the-jedi',
  name: 'Return of the Jedi',
  unitsActivated: '2 Units & ${Units.lukeSkywalker.name}',
  unitsRequired: [Units.lukeSkywalker],
  pips: 3,
  text: r'''
    When Luke Skywalker is issued an order, he gains 1 dodge token. When Luke Skywalker activates, each friendly trooper at range 1-3 of him may remove 1 suppression token.
  ''',
);
