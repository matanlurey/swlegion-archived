import 'package:swlegion/swlegion.dart';

final improvisedOrders = Upgrade(
  title: 'Improvised Orders',
  type: UpgradeSlot.command,
  points: 10,
  isExhaustible: true,
  text: r'''
    After an order token is drawn from a friendly order pool, draw a second order token from that pool. Choose 1 to use and shuffle the other back into the order pool. If you do, during the End Phase, ready this card.
  ''',
);
