import 'package:swlegion/swlegion.dart';

final estmeedLeader = Upgrade(
  id: 'esteemed-leader',
  name: 'Esteemed Leader',
  type: UpgradeSlot.command,
  points: 5,
  text: r'''
    While you are defending, each friendly corps trooper unit at range 1 gains Guardian 1.
  ''',
  waves: const [
    Wave.wGeneralVeersCommanderExpansion,
    Wave.wLeiaOrganaCommanderExpansion,
    Wave.wDirectorOrsonKrennicCommanderExpansion,
  ],
);
