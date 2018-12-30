import 'package:built_collection/built_collection.dart';

import 'src/all_commands.dart' as all_commands;
import 'src/all_units.dart' as all_units;
import 'src/all_upgrades.dart' as all_upgrades;
import 'src/all_weapons.dart' as all_weapons;

export 'src/all_commands.dart' show Commands;
export 'src/all_units.dart' show Units;
export 'src/all_upgrades.dart' show Upgrades;
export 'src/all_weapons.dart' show Weapons;

/// All of the `Command`s in the database.
final allCommands = BuiltSet.of(all_commands.aggregate);

/// All of the `Unit`s in the database.
final allUnits = BuiltSet.of(all_units.aggregate);

/// All of the `Upgrade`s in the database.
final allUpgrades = BuiltSet.of(all_upgrades.aggregate);

/// All of the `Wepaon`s in the database.
final allWeapons = BuiltSet.of(all_weapons.aggregate);
