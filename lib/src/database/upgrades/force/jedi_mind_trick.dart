import 'package:swlegion/swlegion.dart';

final jediMindTrick = Upgrade(
  title: 'Jedi Mind Trick',
  type: UpgradeSlot.force,
  isExhaustible: true,
  restrictedToFaction: Faction.lightSide,
  points: 5,
  text: r'''
    Action: Choose an enemy trooper at range 1-2. It gains 2 suppression tokens.
  ''',
);
