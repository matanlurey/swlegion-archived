import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final notoriousScoundrels = CommandCard(
  id: 'notorious-scoundrels',
  name: 'Notorious Scoundrels',
  activated: '${Units.chewbacca.name} ${Units.hanSolo.name}',
  required: [
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
