import 'package:swlegion/swlegion.dart';

final hqUplink = Upgrade(
  id: 'HQ_UPLINK',
  name: 'HQ Uplink',
  type: UpgradeSlot.comms,
  isExhaustible: true,
  points: 10,
  text: r'''
    During the Issue Orders step of the Command Phase, issue an order to yourself.
  ''',
);
