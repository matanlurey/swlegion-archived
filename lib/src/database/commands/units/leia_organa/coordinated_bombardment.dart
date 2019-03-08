import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final coordinatedBombardment = CommandCard(
  id: 'coordinated-bombardment',
  name: 'Coordinated Bombardment',
  activated: Units.leiaOrgana.name,
  required: [Units.leiaOrgana],
  pips: 1,
  text: r'''
    At the end of Leia Organa's activation, you may perform up to 3 attacks against different enemy units using the following weapon.
  ''',
  weapon: Weapons.coordinatedBombardment,
  waves: const [
    Wave.wLeiaOrganaCommanderExpansion,
  ],
);
