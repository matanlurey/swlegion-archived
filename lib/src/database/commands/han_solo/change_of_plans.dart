import 'package:swlegion/swlegion.dart';

import '../../units/han_solo.dart' as units;

final changeOfPlans = CommandCard(
  id: 'change-of-plans',
  name: 'Change of Plans',
  unitsActivated: '${units.hanSolo.name} and 2 Troopers',
  unitsRequired: [units.hanSolo],
  pips: 3,
  text: r'''
    When this card is revealed, you may discard it to return an opponent's command card to their hand. If you do, return to the Select Command Card step. That opponent cannot select the command card that was returned to their hand.
  ''',
);
