import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final anEntireLegion = CommandCard(
  id: 'an-entire-legion',
  name: 'An Entire Legion',
  activated: 'Each Eligible Unit',
  required: [Units.emperorPalpatine],
  pips: 3,
  waves: const [
    Wave.wEmperorPalpatineCommanderExpansion,
  ],
);
