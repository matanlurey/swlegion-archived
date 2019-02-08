import 'package:swlegion/swlegion.dart';

final commsJammer = Upgrade(
  id: 'comms-jammer',
  name: 'Comms Jammer',
  type: UpgradeSlot.comms,
  points: 15,
  text: r'''
    Enemy units at range 1 cannot be issued orders, unless they are issuing an order to themselves.
  ''',
  waves: const [
    Wave.w74ZSpeederBikesUnitExpansion,
    Wave.wAtRtUnitExpansion,
    Wave.wAtStUnitExpansion,
    Wave.wT47AirspeederUnitExpansion,
  ],
);
