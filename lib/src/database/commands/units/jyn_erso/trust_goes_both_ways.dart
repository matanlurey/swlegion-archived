import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final trustGoesBothWays = CommandCard(
  id: 'trust-goes-both-ways',
  name: 'Trust Goes Both Ways',
  unitsActivated: '${Units.jynErso.name} & 1 Trooper',
  unitsRequired: [Units.jynErso],
  pips: 2,
  text: r'''
    Jyn Erso gains INSPIRE 2.
    When Jyn Erso issues an order to another friendly trooper, that unit gains TEARMWORK: JYN ERSO.
  ''',
  waves: const [
    Wave.wJynErsoCommanderExpansion,
  ],
);
