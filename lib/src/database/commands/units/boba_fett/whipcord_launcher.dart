import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final whipcordLauncher = CommandCard(
  id: 'whipcord-launcher',
  name: 'Whipcord Launcher',
  activated: Units.bobaFett.name,
  required: [Units.bobaFett],
  pips: 1,
  text: r'''
    Boba Fett can perform moves while engaged with a unit that has 1 or more immobilized tokens. During Boba Fett's activation he gains:
    Choose an enemy trooper unit at range 1 and in line of sight. It gains 2 immobilized tokens and 2 suppression tokens.
  ''',
  waves: const [
    Wave.wBobaFettOperativeExpansion,
  ],
);
