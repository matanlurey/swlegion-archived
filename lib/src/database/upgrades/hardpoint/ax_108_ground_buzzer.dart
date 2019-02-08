import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final ax108GroundBuzzer = Upgrade(
  id: 'ax-108-ground-buzzer',
  name: 'AX108 \"Ground Buzzer\"',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: [Units.t47Airspeeder.toRef()],
  weapon: Weapons.ax108GroundBuzzer,
  points: 20,
);
