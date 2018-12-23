import 'package:swlegion/swlegion.dart';

import '../../units/boba_fett.dart' as units;
import '../../weapons/commands/zx_flame_projector.dart' as weapons;

final zxFlameProjector = CommandCard(
  id: 'zx-flame-projector',
  name: 'ZX Flame Projector',
  unitsActivated: units.bobaFett.name,
  unitsRequired: [units.bobaFett],
  pips: 2,
  text: r'''
    During Boba Fett's activation he gains the following weapon:
  ''',
  weapon: weapons.zxFlameProjector,
);
