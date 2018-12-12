import 'package:swlegion/swlegion.dart';

final mpl57IonLauncher = Weapon(
  name: 'MPL-57 Icon Launcher',
  dice: {
    AttackDice.red: 2,
  },
  minRange: 1,
  maxRange: 3,
  keywords: {
    Keyword.ionX: '1',
    Keyword.impactX: '1',
  },
);
