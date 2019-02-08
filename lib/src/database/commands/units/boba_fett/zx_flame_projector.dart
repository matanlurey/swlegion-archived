import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final zxFlameProjector = CommandCard(
  id: 'zx-flame-projector',
  name: 'ZX Flame Projector',
  unitsActivated: Units.bobaFett.name,
  unitsRequired: [Units.bobaFett],
  pips: 2,
  text: r'''
    During Boba Fett's activation he gains the following weapon:
  ''',
  weapon: Weapons.zxFlameProjector,
  waves: const [
    Wave.wBobaFettOperativeExpansion,
  ],
);
