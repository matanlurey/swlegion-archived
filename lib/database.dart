import 'src/all_commands.dart' as all_commands;
import 'src/all_models.dart';
import 'src/all_units.dart' as all_units;
import 'src/all_upgrades.dart' as all_upgrades;
import 'src/all_weapons.dart' as all_weapons;
import 'src/holodeck.dart';

export 'src/all_commands.dart' show Commands;
export 'src/all_units.dart' show Units;
export 'src/all_upgrades.dart' show Upgrades;
export 'src/all_weapons.dart' show Weapons;

/// All of the `Command`s in the database.
final allCommands = List<CommandCard>.unmodifiable(all_commands.aggregate);

/// All of the `Unit`s in the database.
final allUnits = List<Unit>.unmodifiable(all_units.aggregate);

/// All of the `Upgrade`s in the database.
final allUpgrades = List<Upgrade>.unmodifiable(all_upgrades.aggregate);

/// All of the `Wepaon`s in the database.
final allWeapons = List<Weapon>.unmodifiable(all_weapons.aggregate);

final holodeck = Holodeck(
  commands: all_commands.aggregate,
  units: all_units.aggregate,
  upgrades: all_upgrades.aggregate,
);
