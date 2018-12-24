// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UnitType _$trooper = const UnitType._('trooper');
const UnitType _$emplacementTrooper = const UnitType._('emplacementTrooper');
const UnitType _$groundVehicle = const UnitType._('groundVehicle');
const UnitType _$repulsorVehicle = const UnitType._('repulsorVehicle');

UnitType _$valueOf(String name) {
  switch (name) {
    case 'trooper':
      return _$trooper;
    case 'emplacementTrooper':
      return _$emplacementTrooper;
    case 'groundVehicle':
      return _$groundVehicle;
    case 'repulsorVehicle':
      return _$repulsorVehicle;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnitType> _$values = new BuiltSet<UnitType>(const <UnitType>[
  _$trooper,
  _$emplacementTrooper,
  _$groundVehicle,
  _$repulsorVehicle,
]);

Serializer<UnitType> _$unitTypeSerializer = new _$UnitTypeSerializer();

class _$UnitTypeSerializer implements PrimitiveSerializer<UnitType> {
  static const Map<String, String> _toWire = const <String, String>{
    'trooper': 'trooper',
    'emplacementTrooper': 'emplacement-trooper',
    'groundVehicle': 'ground-vehicle',
    'repulsorVehicle': 'repulsor-vehicle',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'trooper': 'trooper',
    'emplacement-trooper': 'emplacementTrooper',
    'ground-vehicle': 'groundVehicle',
    'repulsor-vehicle': 'repulsorVehicle',
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

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
