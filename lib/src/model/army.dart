import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'army_unit.dart';
import 'faction.dart';

part 'army.g.dart';

/// Represents a collection of units (a list) as an army.
abstract class Army implements Built<Army, ArmyBuilder> {
  /// Support for serializing instances of [Army].
  static Serializer<Army> get serializer => _$armySerializer;

  factory Army(void Function(ArmyBuilder) build) = _$Army;
  Army._();

  /// Name of the army.
  String get name;

  /// Faction of the army.
  Faction get faction;

  /// Units in the army.
  BuiltList<ArmyUnit> get units;

  /// Points in the army.
  int get points => units.fold(0, (p, u) => p + u.points);
}
