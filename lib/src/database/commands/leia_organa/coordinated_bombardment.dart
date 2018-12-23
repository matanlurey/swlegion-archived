import 'package:swlegion/swlegion.dart';

import '../../units/leia_organa.dart' as units;
import '../../weapons/commands/coordinated_bombardment.dart' as weapons;

final coordinatedBombardment = CommandCard(
  id: 'coordinated-bombardment',
  name: 'Coordinated Bombardment',
  unitsActivated: units.leiaOrgana.name,
  unitsRequired: [units.leiaOrgana],
  pips: 1,
  text: r'''
    At the end of Leia Organa's activation, you may perform up to 3 attacks against different enemy units using the following weapon.
  ''',
  weapon: weapons.coordinatedBombardment,
);
