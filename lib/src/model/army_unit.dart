import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'unit.dart';
import 'upgrade.dart';

part 'army_unit.g.dart';

/// Represents a unit inside of a list, for example, including upgrades.
abstract class ArmyUnit implements Built<ArmyUnit, ArmyUnitBuilder> {
  /// Support for serializing instances of [ArmyUnit].
  static Serializer<ArmyUnit> get serializer => _$armyUnitSerializer;

  factory ArmyUnit(void Function(ArmyUnitBuilder) build) = _$ArmyUnit;
  ArmyUnit._();

  /// Underlying unit card being used.
  @BuiltValueField(wireName: 'unit')
  Unit get unit;

  /// Upgrades used on the unit.
  @BuiltValueField(wireName: 'upgrades')
  BuiltSet<Upgrade> get upgrades;

  /// Amount of points this unit costs after upgrades.
  int get points => upgrades.fold(unit.points, (p, u) => p + u.points);
}
