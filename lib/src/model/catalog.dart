import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'command_card.dart';
import 'reference.dart';
import 'unit.dart';
import 'upgrade.dart';

part 'catalog.g.dart';

/// Represents cards and rules for a version of Star Wars: Legion.
abstract class Catalog implements Built<Catalog, CatalogBuilder> {
  /// Support for serializing instances of [Catalog].
  static Serializer<Catalog> get serializer => _$catalogSerializer;

  static const _noDuplicateIds = 'Cannot have entries with the same IDs';

  static Map<Reference<T>, T> _index<T extends Indexable<T>>(
    Iterable<T> entries,
  ) {
    final results = Map.fromEntries(
      entries.map((e) => MapEntry(e.toRef(), e)),
    );
    assert(results.length == entries.length, _noDuplicateIds);
    return results;
  }

  factory Catalog(
    void Function(CatalogBuilder) build,
  ) = _$Catalog;

  Catalog._();

  /// Command cards.
  BuiltList<CommandCard> get commandCards;

  @BuiltValueField(serialize: false)
  @memoized
  Map<Reference<CommandCard>, CommandCard> get _commandCardsIndexed {
    return _index(commandCards);
  }

  /// Converts [cardRef] to [CommandCard] from this catalog.
  CommandCard toCommandCard(Reference<CommandCard> cardRef) {
    return cardRef is CommandCard ? cardRef : _commandCardsIndexed[cardRef];
  }

  /// Unit cards.
  BuiltList<Unit> get units;

  @BuiltValueField(serialize: false)
  @memoized
  Map<Reference<Unit>, Unit> get _unitsIndexed {
    return _index(units);
  }

  /// Converts [unitRef] to [Unit] from this catalog.
  Unit toUnit(Reference<Unit> unitRef) {
    return unitRef is Unit ? unitRef : _unitsIndexed[unitRef];
  }

  /// Upgrade cards.
  BuiltList<Upgrade> get upgrades;

  @BuiltValueField(serialize: false)
  @memoized
  Map<Reference<Upgrade>, Upgrade> get _upgradesIndexed {
    return _index(upgrades);
  }

  /// Converts [upgradeRef] to [Upgrade] from this catalog.
  Upgrade toUpgrade(Reference<Upgrade> upgradeRef) {
    return upgradeRef is Upgrade ? upgradeRef : _upgradesIndexed[upgradeRef];
  }

  /// Revision number for this catalog to determine a new ID.
  int get version;

  /// Returns the sum cost (in points) of [unit] and [upgrades].
  int costOfUnit(
    Reference<Unit> unit, {
    Iterable<Reference<Upgrade>> upgrades = const [],
  }) {
    assert(upgrades != null);
    return upgrades.fold(
      toUnit(unit).points,
      (p, u) => p + toUpgrade(u).points,
    );
  }

  /// Returns the sum total of miniatures in [unit] with [upgrades].
  int totalMiniatures(
    Reference<Unit> unit, {
    Iterable<Reference<Upgrade>> upgrades = const [],
  }) {
    assert(upgrades != null);
    return upgrades.fold(toUnit(unit).miniatures, (p, u) {
      return p + (toUpgrade(u).addsMiniature ? 1 : 0);
    });
  }

  /// Returns all [Upgrade] instances that would be valid for a given [unit].
  ///
  /// **NOTE**: This only checks _validity_ based on the data model provided,
  /// but not additional game rules or composition (such as duplicate upgrades
  /// which are normally illegal).
  Iterable<Upgrade> upgradesForUnit(Reference<Unit> unit) {
    final details = toUnit(unit);
    return upgrades.where((u) => u.isUsableBy(details));
  }
}
