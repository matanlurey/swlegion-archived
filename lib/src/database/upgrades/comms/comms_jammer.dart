import 'package:swlegion/swlegion.dart';

final commsJammer = Upgrade(
  id: 'COMMS_JAMMER',
  name: 'Comms Jammer',
  type: UpgradeSlot.comms,
  points: 15,
  text: r'''
    Enemy units at range 1 cannot be issued orders, unless they are issuing an order to themselves.
  ''',
);
