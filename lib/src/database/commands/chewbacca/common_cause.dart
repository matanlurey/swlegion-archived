import 'package:swlegion/swlegion.dart';

import '../../units/chewbacca.dart' as units;
import '../../units/luke_skywalker.dart' as units;

final commonCause = CommandCard(
  id: 'common-cause',
  name: 'Common Cause',
  unitsActivated: units.chewbacca.name,
  unitsRequired: [
    units.chewbacca,
    units.lukeSkywalker,
  ],
  pips: 1,
  text: r'''
    After Chewbacca activates, if Luke Skywalker has a faceup order token, he may activate.
    After Luke Skywalker activates, if Chewbacca has a faceup order token, he may activate.
  ''',
);
