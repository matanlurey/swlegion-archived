// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Faction _$rebelAlliance = const Faction._('rebels');
const Faction _$galacticEmpire = const Faction._('imperials');

Faction _$valueOfFaction(String name) {
  switch (name) {
    case 'rebels':
      return _$rebelAlliance;
    case 'imperials':
      return _$galacticEmpire;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Faction> _$valuesFaction = new BuiltSet<Faction>(const <Faction>[
  _$rebelAlliance,
  _$galacticEmpire,
]);

const ForceAlignment _$light = const ForceAlignment._('light');
const ForceAlignment _$dark = const ForceAlignment._('dark');

ForceAlignment _$valueOfForceAlignment(String name) {
  switch (name) {
    case 'light':
      return _$light;
    case 'dark':
      return _$dark;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ForceAlignment> _$valuesForceAlignment =
    new BuiltSet<ForceAlignment>(const <ForceAlignment>[
  _$light,
  _$dark,
]);

Serializer<Faction> _$factionSerializer = new _$FactionSerializer();
Serializer<ForceAlignment> _$forceAlignmentSerializer =
    new _$ForceAlignmentSerializer();

class _$FactionSerializer implements PrimitiveSerializer<Faction> {
  static const Map<String, String> _toWire = const <String, String>{
    'rebels': 'rebels',
    'imperials': 'imperials',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'rebels': 'rebels',
    'imperials': 'imperials',
  };

  @override
  final Iterable<Type> types = const <Type>[Faction];
  @override
  final String wireName = 'Faction';

  @override
  Object serialize(Serializers serializers, Faction object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Faction deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Faction.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$ForceAlignmentSerializer
    implements PrimitiveSerializer<ForceAlignment> {
  static const Map<String, String> _toWire = const <String, String>{
    'light': 'light',
    'dark': 'dark',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'light': 'light',
    'dark': 'dark',
  };

  @override
  final Iterable<Type> types = const <Type>[ForceAlignment];
  @override
  final String wireName = 'ForceAlignment';

  @override
  Object serialize(Serializers serializers, ForceAlignment object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForceAlignment deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForceAlignment.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
