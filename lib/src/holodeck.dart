import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

import 'all_models.dart';

/// Game mechanics assistant based on the provided database of cards.
///
/// **NOTE**: Interactions are _not_ cached.
class Holodeck {
  /// All command cards in the [Holodeck].
  final List<CommandCard> commands;

  /// [CommandCard] by index.
  final Map<Reference<CommandCard>, CommandCard> _commandsIndex;

  /// All units in the [Holodeck].
  final List<Unit> units;

  /// [Unit] by index.
  final Map<Reference<Unit>, Unit> _unitsIndex;

  /// All upgrades in the [Holodeck].
  final List<Upgrade> upgrades;

  /// [Upgrade] by index.
  final Map<Reference<Upgrade>, Upgrade> _upgradesIndex;

  Holodeck({
    @required Iterable<CommandCard> commands,
    @required Iterable<Unit> units,
    @required Iterable<Upgrade> upgrades,
  })  : assert(commands != null),
        commands = List.unmodifiable(commands),
        _commandsIndex = Map.fromEntries(
          commands.map((c) => MapEntry(c.toRef(), c)),
        ),
        assert(units != null),
        units = List.unmodifiable(units),
        _unitsIndex = Map.fromEntries(
          units.map((u) => MapEntry(u.toRef(), u)),
        ),
        assert(upgrades != null),
        upgrades = List.unmodifiable(upgrades),
        _upgradesIndex = Map.fromEntries(
          upgrades.map((u) => MapEntry(u.toRef(), u)),
        );

  /// Returns all [Upgrade] instances that would be valid for a given [unit].
  ///
  /// **NOTE**: This only checks _validity_ not game rules or composition.
  Iterable<Upgrade> upgradesForUnit(Reference<Unit> unit) {
    final details = toUnit(unit);
    return upgrades.where((u) => u.isUsableBy(details));
  }

  /// Returns all [upgrades] valid for a given [unit] grouped by [UpgradeSlot].
  ///
  /// **NOTE**: This only checks _validity_ not game rules or composition.
  BuiltListMultimap<UpgradeSlot, Upgrade> upgradesForUnitGrouped(
    Reference<Unit> unit,
  ) {
    final builder = ListMultimapBuilder<UpgradeSlot, Upgrade>();
    for (final upgrade in upgradesForUnit(unit)) {
      builder.add(upgrade.type, upgrade);
    }
    return builder.build();
  }

  /// Returns the cost of [unit] with [upgrades].
  int costOfUnit(
    Reference<Unit> unit, {
    @required Iterable<Reference<Upgrade>> upgrades,
  }) {
    assert(upgrades != null);
    return upgrades.fold(toUnit(unit).points, (sum, upgrade) {
      return sum + toUpgrade(upgrade).points;
    });
  }

  /// Returns the number of miniatures in [unit] with [upgrades].
  int totalMinatures(
    Reference<Unit> unit, {
    @required Iterable<Reference<Upgrade>> upgrades,
  }) {
    assert(upgrades != null);
    return upgrades.fold(toUnit(unit).miniatures, (sum, upgrade) {
      return sum + (toUpgrade(upgrade).addsMiniature ? 1 : 0);
    });
  }

  /// Looks up and returns a reference to a [command] as a [CommandCard].
  CommandCard toCommand(Reference<CommandCard> command) {
    if (command is CommandCard) {
      return command;
    }
    return _commandsIndex[command];
  }

  /// Looks up and returns a reference to a [unit] as a [Unit].
  Unit toUnit(Reference<Unit> unit) {
    if (unit is Unit) {
      return unit;
    }
    return _unitsIndex[unit];
  }

  /// Looks up and returns a reference to a [upgrade] as a [Upgrade].
  Upgrade toUpgrade(Reference<Upgrade> upgrade) {
    if (upgrade is Upgrade) {
      return upgrade;
    }
    return _upgradesIndex[upgrade];
  }
}
