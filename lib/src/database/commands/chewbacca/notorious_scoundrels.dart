import 'package:swlegion/swlegion.dart';

import '../../units/chewbacca.dart' as units;
import '../../units/han_solo.dart' as units;

final notoriousScoundrels = CommandCard(
  id: 'notorious-scoundrels',
  name: 'Notorious Scoundrels',
  unitsActivated: units.chewbacca.name,
  unitsRequired: [
    units.chewbacca,
    units.hanSolo,
  ],
  pips: 3,
  text: r'''
    Choose one of Han Solo's command cards in your discard pile. Return that card to your hand.
  ''',
);
