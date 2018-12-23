import 'package:swlegion/swlegion.dart';

import '../../units/han_solo.dart' as units;

final sorryAboutTheMess = CommandCard(
  id: 'sorry-about-the-mess',
  name: 'Sorry About The Mess',
  unitsActivated: units.hanSolo.name,
  unitsRequired: [units.hanSolo],
  pips: 1,
  text: r'''
    While building a command hand, treat this card as though it has 1 pip. When Han Solo is issued an order, he gains 1 aim token and 1 dodge token.
  ''',
);
