import 'package:swlegion/swlegion.dart';

final standingOrders = CommandCard(
  id: 'standing-orders',
  name: 'Standing Orders',
  activated: '1 Unit',
  pips: 4,
  text: r'''
    At the end of the Command Phase, return this card to your hand.
  ''',
  waves: const [
    Wave.wCore,
  ],
);
