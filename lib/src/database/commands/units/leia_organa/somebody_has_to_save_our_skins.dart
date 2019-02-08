import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final somebodyHasToSaveOurSkins = CommandCard(
  id: 'somebody-has-to-save-our-skins',
  name: 'Somebody Has to Save Our Skins',
  unitsActivated: '${Units.leiaOrgana.name} & 2 Troopers',
  unitsRequired: [Units.leiaOrgana],
  pips: 3,
  text: r'''
    After Leia Organa's activation, you may choose a friendly unit at range 1-2 with a faceup order token and activate it.
  ''',
  waves: const [
    Wave.wLeiaOrganaCommanderExpansion,
  ],
);
