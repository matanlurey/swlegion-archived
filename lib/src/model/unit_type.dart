import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unit_type.g.dart';

/// Represents possible unit types.
class UnitType extends EnumClass {
  @BuiltValueEnumConst(wireName: 'trooper')
  static const UnitType trooper = _$trooper;

  @BuiltValueEnumConst(wireName: 'emplacement-trooper')
  static const UnitType emplacementTrooper = _$emplacementTrooper;

  @BuiltValueEnumConst(wireName: 'ground-vehicle')
  static const UnitType groundVehicle = _$groundVehicle;

  @BuiltValueEnumConst(wireName: 'repulsor-vehicle')
  static const UnitType repulsorVehicle = _$repulsorVehicle;

  const UnitType._(String name) : super(name);

  @override
  String get name => _$UnitTypeSerializer._toWire[super.name];

  /// Support for serializing instances of [UnitType].
  static Serializer<UnitType> get serializer => _$unitTypeSerializer;

  /// All known values of [UnitType].
  static BuiltSet<UnitType> get values => _$values;

  /// Parses and returns [name] into the cooresponding [UnitType] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static UnitType from(String name) {
    return _$valueOf(_$UnitTypeSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "UnitType.from" instead.')
  static UnitType valueOf(String name) => _$valueOf(name);
}
