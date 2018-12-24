// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Faction _$lightSide = const Faction._('lightSide');
const Faction _$darkSide = const Faction._('darkSide');

Faction _$valueOf(String name) {
  switch (name) {
    case 'lightSide':
      return _$lightSide;
    case 'darkSide':
      return _$darkSide;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Faction> _$values = new BuiltSet<Faction>(const <Faction>[
  _$lightSide,
  _$darkSide,
]);

Serializer<Faction> _$factionSerializer = new _$FactionSerializer();

class _$FactionSerializer implements PrimitiveSerializer<Faction> {
  static const Map<String, String> _toWire = const <String, String>{
    'lightSide': 'light-side',
    'darkSide': 'dark-side',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'light-side': 'lightSide',
    'dark-side': 'darkSide',
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

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
