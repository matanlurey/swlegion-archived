import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rank.g.dart';

/// Represents possible ranks for units in the game.
///
/// See https://www.fantasyflightgames.com/en/news/2018/3/7/a-legion-of-your-best-troops/.
class Rank extends EnumClass {
  static const _armyConstraints = {
    commander: [1, 2],
    corps: [3, 6],
    specialForces: [0, 3],
    support: [0, 3],
    heavy: [0, 2],
  };

  @BuiltValueEnumConst(wireName: 'COMMANDER')
  static const Rank commander = _$commander;

  @BuiltValueEnumConst(wireName: 'OPERATIVE')
  static const Rank operative = _$operative;

  @BuiltValueEnumConst(wireName: 'CORPS')
  static const Rank corps = _$corps;

  @BuiltValueEnumConst(wireName: 'SPECIAL_FORCES')
  static const Rank specialForces = _$specialForces;

  @BuiltValueEnumConst(wireName: 'SUPPORT')
  static const Rank support = _$support;

  @BuiltValueEnumConst(wireName: 'HEAVY')
  static const Rank heavy = _$heavy;

  const Rank._(String name) : super(name);

  /// Minimum amount of this type of unit for a typical army list (800 points).
  int get minimum => _armyConstraints[this].first;

  /// Maximum amount of this type of unit for a typical army list (800 points).
  int get maximum => _armyConstraints[this].last;

  /// Support for serializing instances of [Rank].
  static Serializer<Rank> get serializer => _$rankSerializer;

  /// All known values of [Rank].
  static BuiltSet<Rank> get values => _$values;

  /// Parses and returns [name] into the cooresponding [Rank] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static Rank valueOf(String name) => _$valueOf(name);
}
