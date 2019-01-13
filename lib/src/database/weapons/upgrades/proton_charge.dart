import 'package:swlegion/swlegion.dart';

final protonCharge = Weapon(
  name: 'Sonic Charge',
  dice: {
    AttackDice.red: 1,
    AttackDice.white: 2,
  },
  minRange: 1,
  maxRange: 1,
  areaOfEffect: 1,
  keywords: const {
    WeaponKeyword.kArm: 1,
    WeaponKeyword.kDetonate: 1,
    WeaponKeyword.kBlast: '',
    WeaponKeyword.kImpact: 1,
  },
  surgeOverride: AttackSurge.critical,
);
