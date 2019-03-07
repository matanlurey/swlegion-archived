import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final reptilianRampage = CommandCard(
  id: 'reptilian-rampage',
  name: 'Reptilian Rampage',
  unitsActivated: Units.bossk.name,
  unitsRequired: [Units.bossk],
  pips: 2,
  text: r'''
    During Bossk's Activation, he can perform up to 2 attack actions and he may
    suffer 1 wound to perform a free move action.
  ''',
  waves: const [
    Wave.wBosskOperativeExpansion,
  ],
);
