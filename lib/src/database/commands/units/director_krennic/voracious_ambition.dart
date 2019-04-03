import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final voraciousAmbition = CommandCard(
  id: 'voracious-ambition',
  name: 'Voracious Ambition',
  activated: Units.directorKrennic.name,
  required: [Units.directorKrennic],
  pips: 1,
  text: r'''
    At the start of the Activation Phase, place 3 random order tokens from your
    order pool facedown on this card. You may look at these order tokens at any
    time. When you would draw an order token from your order pool, you may
    choose 1 of the order tokens on this card and use that order token instead.
  ''',
  waves: const [
    Wave.wDirectorOrsonKrennicCommanderExpansion,
  ],
);
