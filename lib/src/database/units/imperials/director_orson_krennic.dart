import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final directorOrsonKrennic = Unit(
  id: 'director-orson-krennic',
  name: 'Director Orson Krennic',
  subTitle: 'Architect of Terror',
  faction: Faction.imperials,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  speed: 2,
  points: 90,
  upgrades: const {
    UpgradeSlot.command: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    Weapons.unarmed,
    Weapons.krennicsDt29BlasterPistol,
  ],
  keywords: {
    UnitKeyword.kCompel: '',
    UnitKeyword.kCunning: '',
    UnitKeyword.kEntourage: 'Death Troopers',
    UnitKeyword.kSharpshooter: 1,
  },
  waves: const [
    Wave.wDirectorOrsonKrennicCommanderExpansion,
  ],
);
