import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unit_type.g.dart';

/// Represents possible unit types.
class UnitType extends EnumClass {
  @BuiltValueEnumConst(wireName: 'TROOPER')
  static const UnitType trooper = _$trooper;

  @BuiltValueEnumConst(wireName: 'EMPLACEMENT_TROOPER')
  static const UnitType empalcementTrooper = _$emplacementTrooper;

  @BuiltValueEnumConst(wireName: 'VEHICLE')
  static const UnitType vehicle = _$vehicle;

  const UnitType._(String name) : super(name);

  /// Support for serializing instances of [UnitType].
  static Serializer<UnitType> get serializer => _$unitTypeSerializer;

  /// All known values of [UnitType].
  static BuiltSet<UnitType> get values => _$values;

  /// Parses and returns [name] into the cooresponding [UnitType] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static UnitType valueOf(String name) => _$valueOf(name);
}
