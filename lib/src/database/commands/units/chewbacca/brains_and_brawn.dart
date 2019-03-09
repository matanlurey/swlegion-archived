import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final brainsAndBrawn = CommandCard(
  id: 'brains-and-brawn',
  name: 'Brains and Brawn',
  activated: '${Units.chewbacca.name} ${Units.leiaOrgana.name}',
  required: [
    Units.chewbacca,
    Units.leiaOrgana,
  ],
  pips: 2,
  text: r'''
    When Leia Organa is performing a ranged attack, if Chewbacca is not engaged and has line of sight to and is range 1-3 of the defender, add one
    of his ranged weapons to the attack pool.
  ''',
  waves: const [
    Wave.wChewbaccaOperativeExpansion,
  ],
);
