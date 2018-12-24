import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attack_surge.g.dart';

/// Represents possible results for the surge icon for attacks.
class AttackSurge extends EnumClass {
  /// Attack surge to hits.
  @BuiltValueEnumConst(wireName: 'hit')
  static const AttackSurge hit = _$hit;

  /// Attack surge to crits.
  @BuiltValueEnumConst(wireName: 'critical')
  static const AttackSurge critical = _$crit;

  const AttackSurge._(String name) : super(name);

  @override
  String get name => _$AttackSurgeSerializer._toWire[super.name];

  /// Support for serializing instances of [AttackSurge].
  static Serializer<AttackSurge> get serializer => _$attackSurgeSerializer;

  /// All known values of [AttackSurge].
  static BuiltSet<AttackSurge> get values => _$values;

  /// Parses and returns [name] into the cooresponding [AttackSurge] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static AttackSurge from(String name) {
    return _$valueOf(_$AttackSurgeSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "AttackSurge.from" instead.') 
  static AttackSurge valueOf(String name) => _$valueOf(name);
}
