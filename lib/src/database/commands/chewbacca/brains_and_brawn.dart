import 'package:swlegion/swlegion.dart';

import '../../units/chewbacca.dart' as units;
import '../../units/leia_organa.dart' as units;

final brainsAndBrawn = CommandCard(
  id: 'brains-and-brawn',
  name: 'Brains and Brawn',
  unitsActivated: units.chewbacca.name,
  unitsRequired: [
    units.chewbacca,
    units.leiaOrgana,
  ],
  pips: 2,
  text: r'''
    When Leia Organa is performing a ranged attack, if Chewbacca is not engaged and has line of sight to and is range 1-3 of the defender, add one
    of his ranged weapons to the attack pool.
  ''',
);
