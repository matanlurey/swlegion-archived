import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final theDarksaber = Upgrade(
  id: 'the-darksaber',
  name: 'The Darksaber',
  type: UpgradeSlot.armament,
  restrictedToUnit: [
    Units.sabrineWren.toRef(),
  ],
  weapon: Weapons.theDarksaber,
  points: 25,
  keywordsForUnit: {
    UnitKeyword.kDauntless: '',
    UnitKeyword.kImmunePierce: 'Melee',
  },
  waves: const [
    Wave.wSabineWrenOperativeExpansion,
  ],
  isUnique: true,
);
