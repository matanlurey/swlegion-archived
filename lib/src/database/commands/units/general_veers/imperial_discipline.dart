import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final imperialDiscipline = CommandCard(
  id: 'imperial-discipline',
  name: 'Imperial Discipline',
  activated: '${Units.generalVeers.name} & 2 Units',
  required: [Units.generalVeers],
  pips: 3,
  text: r'''
    When a friendly unit is issued an order it may recover.
  ''',
  waves: const [
    Wave.wGeneralVeersCommanderExpansion,
  ],
);
