import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final completeTheMission = CommandCard(
  id: 'complete-the-mission',
  name: 'Complete The Mission',
  activated: '3 Troopers',
  required: [Units.jynErso],
  pips: 3,
  text: r'''
    Jyn Erso gains LOW PROFILE.
    When a friendly trooper unit is issued an order, it may gain 1 suppression token.
    When a friendly trooper unit with a faceup order token activates, during its activation, it cannot become panicked or suppressed.
    At the end of that unit's activation, it may remove 1 suppression token.
  ''',
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
