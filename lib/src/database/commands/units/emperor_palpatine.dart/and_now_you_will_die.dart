import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final andNowYouWillDie = CommandCard(
  id: 'and-now-you-will-die',
  name: 'And Now... You Will Die',
  activated: Units.emperorPalpatine.name,
  required: [Units.emperorPalpatine],
  pips: 1,
  text: r'''
    During Emperor Palpatine's activation, he may suffer 1 wound and gain 1 suppression token to perform an attack. He may do this any number of times. After Emperor Palpatine performs an attack, the defender gains 1 immobilized token.
  ''',
  waves: const [
    Wave.wEmperorPalpatineCommanderExpansion,
  ],
);
