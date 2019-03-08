import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final commonCause = CommandCard(
  id: 'common-cause',
  name: 'Common Cause',
  activated: Units.chewbacca.name,
  required: [
    Units.chewbacca,
    Units.lukeSkywalker,
  ],
  pips: 1,
  text: r'''
    After Chewbacca activates, if Luke Skywalker has a faceup order token, he may activate.
    After Luke Skywalker activates, if Chewbacca has a faceup order token, he may activate.
  ''',
  waves: const [
    Wave.wChewbaccaOperativeExpansion,
  ],
);
