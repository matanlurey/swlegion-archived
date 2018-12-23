import 'package:swlegion/swlegion.dart';

import '../../units/darth_vader.dart' as units;

final implacable = CommandCard(
  id: 'implacable',
  name: 'Implacable',
  unitsActivated: units.darthVader.name,
  unitsRequired: [units.darthVader],
  pips: 1,
  text: r'''
    At the end of Darth Vader’s first activation, he may suffer 1 wound to shuffle his order token into the order pool. During Darth Vader's second activation, he performs 1 fewer action.
  ''',
);
