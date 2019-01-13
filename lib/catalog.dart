import 'package:built_collection/built_collection.dart';

import 'src/all_commands.dart' as all_commands;
import 'src/all_models.dart';
import 'src/all_units.dart' as all_units;
import 'src/all_upgrades.dart' as all_upgrades;
import 'src/model/catalog.dart';

export 'src/all_commands.dart' show Commands;
export 'src/all_units.dart' show Units;
export 'src/all_upgrades.dart' show Upgrades;
export 'src/all_weapons.dart' show Weapons;

/// Current catalog of cards and rules.
final catalog = Catalog((b) {
  return b
    ..commandCards = ListBuilder(all_commands.aggregate)
    ..units = ListBuilder(all_units.aggregate)
    ..upgrades = ListBuilder(all_upgrades.aggregate)
    ..version = 1;
});
