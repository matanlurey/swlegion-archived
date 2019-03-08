import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final implacable = CommandCard(
  id: 'implacable',
  name: 'Implacable',
  activated: Units.darthVader.name,
  required: [Units.darthVader],
  pips: 1,
  text: r'''
    At the end of Darth Vader’s first activation, he may suffer 1 wound to shuffle his order token into the order pool. During Darth Vader's second activation, he performs 1 fewer action.
  ''',
  waves: const [
    Wave.wCore,
  ],
);
