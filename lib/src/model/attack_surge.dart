import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attack_surge.g.dart';

/// Represents possible results for the _surge_ icon for attacks.
class AttackSurge extends EnumClass {
  /// No attack surge.
  @BuiltValueEnumConst(wireName: 'NONE')
  static const AttackSurge none = _$none;

  /// Attack surge to hits.
  @BuiltValueEnumConst(wireName: 'HIT')
  static const AttackSurge black = _$hit;

  /// Attack surge to crits.
  @BuiltValueEnumConst(wireName: 'CRIT')
  static const AttackSurge red = _$crit;

  const AttackSurge._(String name) : super(name);

  /// Support for serializing instances of [AttackSurge].
  static Serializer<AttackSurge> get serializer => _$attackSurgeSerializer;

  /// All known values of [AttackSurge].
  static BuiltSet<AttackSurge> get values => _$values;

  /// Parses and returns [name] into the cooresponding [AttackSurge] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static AttackSurge valueOf(String name) => _$valueOf(name);
}
