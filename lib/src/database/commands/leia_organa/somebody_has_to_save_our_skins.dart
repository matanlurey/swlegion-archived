import 'package:swlegion/swlegion.dart';

import '../../units/leia_organa.dart' as units;

final somebodyHasToSaveOurSkins = CommandCard(
  id: 'somebody-has-to-save-our-skins',
  name: 'Somebody Has to Save Our Skins',
  unitsActivated: '${units.leiaOrgana.name} & 2 Troopers',
  unitsRequired: [units.leiaOrgana],
  pips: 3,
  text: r'''
    After Leia Organa's activation, you may choose a friendly unit at range 1-2 with a faceup order token and activate it.
  ''',
);
