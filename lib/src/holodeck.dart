import 'package:meta/meta.dart';

import 'all_models.dart';

/// Game mechanics assistant based on the provided database of cards.
class Holodeck {
  /// All units in the [Holodeck].
  final List<Unit> units;

  /// [Unit] by index.
  final Map<Reference<Unit>, Unit> _unitsIndex;

  /// All upgrades in the [Holodeck].
  final List<Upgrade> upgrades;

  /// [Upgrade] by index.
  final Map<Reference<Upgrade>, Upgrade> _upgradesIndex;

  Holodeck({
    @required Iterable<Unit> units,
    @required Iterable<Upgrade> upgrades,
  })  : assert(units != null),
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
  Iterable<Upgrade> upgradesForUnit(Reference<Unit> unit) {
    final details = toUnit(unit);
    return upgrades.where((u) {
      if (!details.upgrades.containsKey(u.type)) {
        return false;
      }
      if (u.restrictedToUnit.isNotEmpty &&
          !u.restrictedToUnit.contains(unit.toRef())) {
        return false;
      }
      if (u.restrictedToFaction != null) {
        return u.restrictedToFaction == details.faction;
      }
      if (u.restrictedToType != null) {
        return u.restrictedToType == details.type;
      }
      return true;
    });
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
