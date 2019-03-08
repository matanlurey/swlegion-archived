import 'package:swlegion/swlegion.dart';

final turningTheTide = CommandCard(
  id: 'turning-the-tide',
  name: 'Turning The Tide',
  activated: '2 Support or Heavy Units',
  faction: Faction.rebels,
  pips: 2,
  text: r'''
    Each friendly support and heavy unit gains INSPIRE 2.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
