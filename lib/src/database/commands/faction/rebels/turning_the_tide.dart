import 'package:swlegion/swlegion.dart';

final turningTheTide = CommandCard(
  id: 'turning-the-tide',
  name: 'Turning The Tide',
  unitsActivated: '2 Support or Heavy Units',
  factionRequired: Faction.rebels,
  pips: 2,
  text: r'''
    Each friendly support and heavy unit gains INSPIRE 2.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
