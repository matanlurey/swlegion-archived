import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final notoriousScoundrels = CommandCard(
  id: 'notorious-scoundrels',
  name: 'Notorious Scoundrels',
  unitsActivated: Units.chewbacca.name,
  unitsRequired: [
    Units.chewbacca,
    Units.hanSolo,
  ],
  pips: 3,
  text: r'''
    Choose one of Han Solo's command cards in your discard pile. Return that card to your hand.
  ''',
  waves: const [
    Wave.wChewbaccaOperativeExpansion,
  ],
);
