import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final mercilessMunitions = CommandCard(
  id: 'merciless-munititions',
  name: 'Merciless Munititions',
  activated: Units.bossk.name,
  required: [Units.bossk],
  pips: 1,
  text: r'''
    During the round this card is played, Bossk gains ARM: 1 DIOXIS CHARGE.
    After he performs this action, he may perform a speed-1 move. Until the end
    of the game, Bossk gains DETONATE 1: DIOXIS CHARGE. After a trooper unit
    defends against an attack made by your dioxis charge, it gains 1 poison
    token. Do not discard this card from play.
  ''',
  waves: const [
    Wave.wBosskOperativeExpansion,
  ],
  weapon: Weapons.dioxisCharge,
);
