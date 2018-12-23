import 'package:swlegion/swlegion.dart';

import '../../units/emperor_palpatine.dart' as units;

final anEntireLegion = CommandCard(
  id: 'an-entire-legion',
  name: 'An Entire Legion',
  unitsActivated: 'Each Eligible Unit',
  unitsRequired: [units.emperorPalpatine],
  pips: 3,
);
