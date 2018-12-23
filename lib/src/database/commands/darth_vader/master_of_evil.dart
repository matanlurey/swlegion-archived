import 'package:swlegion/swlegion.dart';

import '../../units/darth_vader.dart' as units;

final masterOfEvil = CommandCard(
  id: 'master-of-evil',
  name: 'Master of Evil',
  unitsActivated: '2 Units & ${units.darthVader.name}',
  unitsRequired: [units.darthVader],
  pips: 3,
  text: r'''
    When Darth Vader is issued an order, he gains 1 dodge token. When Darth Vader activates, each enemy trooper at range 1-2 of him gains 3 suppression tokens.
  ''',
);
