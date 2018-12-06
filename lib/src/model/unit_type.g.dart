// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

const UnitType _$trooper = const UnitType._('trooper');
const UnitType _$emplacementTrooper = const UnitType._('empalcementTrooper');
const UnitType _$vehicle = const UnitType._('vehicle');

UnitType _$valueOf(String name) {
  switch (name) {
    case 'trooper':
      return _$trooper;
    case 'empalcementTrooper':
      return _$emplacementTrooper;
    case 'vehicle':
      return _$vehicle;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnitType> _$values = new BuiltSet<UnitType>(const <UnitType>[
  _$trooper,
  _$emplacementTrooper,
  _$vehicle,
]);

Serializer<UnitType> _$unitTypeSerializer = new _$UnitTypeSerializer();

class _$UnitTypeSerializer implements PrimitiveSerializer<UnitType> {
  static const Map<String, String> _toWire = const <String, String>{
    'trooper': 'TROOPER',
    'empalcementTrooper': 'EMPLACEMENT_TROOPER',
    'vehicle': 'VEHICLE',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'TROOPER': 'trooper',
    'EMPLACEMENT_TROOPER': 'empalcementTrooper',
    'VEHICLE': 'vehicle',
  };

  @override
  final Iterable<Type> types = const <Type>[UnitType];
  @override
  final String wireName = 'UnitType';

  @override
  Object serialize(Serializers serializers, UnitType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnitType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnitType.valueOf(_fromWire[serialized] ?? serialized as String);
}
