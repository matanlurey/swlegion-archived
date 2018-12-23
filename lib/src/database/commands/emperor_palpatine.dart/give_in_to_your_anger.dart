import 'package:swlegion/swlegion.dart';

import '../../units/emperor_palpatine.dart' as units;

final giveInToYourAnger = CommandCard(
  id: 'give-in-to-your-anger',
  name: 'Give in to Your Anger',
  unitsActivated: units.emperorPalpatine.name,
  unitsRequired: [units.emperorPalpatine],
  pips: 2,
  text: r'''
    Before an opponent would activate their first unit, you may choose an enemy trooper unit. If you do, your opponent must activate that unit instread. Assign it an order token from its order pool unless it has a faceup order token. At the end of that units's activation, if it did not perform an attack, it gains 4 suppression tokens.
  ''',
);
