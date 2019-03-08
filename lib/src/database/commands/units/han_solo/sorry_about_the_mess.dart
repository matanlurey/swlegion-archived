import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final sorryAboutTheMess = CommandCard(
  id: 'sorry-about-the-mess',
  name: 'Sorry About The Mess',
  activated: Units.hanSolo.name,
  required: [Units.hanSolo],
  pips: 0,
  text: r'''
    While building a command hand, treat this card as though it has 1 pip. When Han Solo is issued an order, he gains 1 aim token and 1 dodge token.
  ''',
  waves: const [
    Wave.wHanSoloCommanderExpansion,
  ],
);
