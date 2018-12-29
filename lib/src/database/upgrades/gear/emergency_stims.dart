import 'package:swlegion/swlegion.dart';

final emergencyStims = Upgrade(
  id: 'emergency-stims',
  name: 'Emergency Stims',
  type: UpgradeSlot.gear,
  points: 8,
  text: r'''
    During an attack, when you would suffer wounds, prevent up to 2 wounds and place an equal number of wound tokens on this card instead. If you do, at the end of your next activation, discard each token on this card and suffer wounds equal to the number of tokens discarded.
  ''',
);
