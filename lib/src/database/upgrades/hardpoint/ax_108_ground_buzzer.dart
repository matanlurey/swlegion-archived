import 'package:swlegion/swlegion.dart';

import '../../units/t_47_airspeeder.dart' as unit;
import '../../weapons/upgrades/hardpoints/ax_108_ground_buzzer.dart' as weapon;

final ax108GroundBuzzer = Upgrade(
  id: 'AX108_GROUND_BUZZER',
  name: 'AX108 \"Ground Buzzer\"',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.t47Airspeeder,
  weapon: weapon.ax108GroundBuzzer,
  points: 20,
);
