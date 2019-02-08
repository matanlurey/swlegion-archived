import 'package:swlegion/swlegion.dart';

final coordinatedBombardment = Weapon(
  name: 'Coordinated Bombardment',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 4,
  maxRange: null,
  keywords: {
    WeaponKeyword.kImmuneDeflect: '',
  },
);
