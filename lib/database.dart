import 'package:built_collection/built_collection.dart';

import 'src/all_units.dart' as all_units;
import 'src/all_upgrades.dart' as all_upgrades;
import 'src/all_weapons.dart' as all_weapons;

/// All of the `Unit`s in the database.
final units = BuiltSet.of(all_units.aggregate);

/// All of the `Upgrade`s in the database.
final upgrades = BuiltSet.of(all_upgrades.aggregate);

/// All of the `Wepaon`s in the database.
final weapons = BuiltSet.of(all_weapons.aggregate);
