import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final changeOfPlans = CommandCard(
  id: 'change-of-plans',
  name: 'Change of Plans',
  activated: '${Units.hanSolo.name} and 2 Troopers',
  required: [Units.hanSolo],
  pips: 3,
  text: r'''
    When this card is revealed, you may discard it to return an opponent's command card to their hand. If you do, return to the Select Command Card step. That opponent cannot select the command card that was returned to their hand.
  ''',
  waves: const [
    Wave.wHanSoloCommanderExpansion,
  ],
);
