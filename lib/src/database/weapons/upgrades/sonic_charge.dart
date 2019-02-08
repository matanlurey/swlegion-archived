import 'package:swlegion/swlegion.dart';

final sonicCharge = Weapon(
  name: 'Sonic Charge',
  dice: {
    AttackDice.red: 1,
    AttackDice.black: 1,
  },
  minRange: 1,
  maxRange: 1,
  areaOfEffect: 1,
  keywords: {
    WeaponKeyword.kArm: 1,
    WeaponKeyword.kDetonate: 1,
    WeaponKeyword.kBlast: '',
    WeaponKeyword.kSuppressive: '',
  },
  surgeOverride: AttackSurge.critical,
);
