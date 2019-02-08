import 'package:swlegion/swlegion.dart';

final commsRelay = Upgrade(
  id: 'comms-relay',
  name: 'Comms Relay',
  type: UpgradeSlot.comms,
  points: 5,
  text: r'''
    When you would be issued an order, you may choose a friendly unit at range 1-2.
    Issue an order to the chosen unit instead.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
