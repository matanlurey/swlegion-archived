import 'package:swlegion/swlegion.dart';

final dioxisCharge = Weapon(
  name: 'Dioxis Charge',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
  },
  minRange: 1,
  maxRange: 1,
  areaOfEffect: 1,
  keywords: {
    WeaponKeyword.kBlast: '',
  },
  surgeOverride: AttackSurge.critical,
);
