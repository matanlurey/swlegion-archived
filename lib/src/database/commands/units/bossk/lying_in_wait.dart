import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final lyingInWait = CommandCard(
  id: 'lying-in-wait',
  name: 'Lying In Wait',
  unitsActivated: Units.bossk.name,
  unitsRequired: [Units.bossk],
  pips: 3,
  text: r'''
    Bossk gains SHARPSHOOTER 1. After an enemy unit activates, Bossk gains 1
    aim token.
  ''',
  waves: const [
    Wave.wBosskOperativeExpansion,
  ],
);
