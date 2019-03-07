// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defense_dice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DefenseDice _$white = const DefenseDice._('white');
const DefenseDice _$red = const DefenseDice._('red');

DefenseDice _$valueOf(String name) {
  switch (name) {
    case 'white':
      return _$white;
    case 'red':
      return _$red;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DefenseDice> _$values =
    new BuiltSet<DefenseDice>(const <DefenseDice>[
  _$white,
  _$red,
]);

Serializer<DefenseDice> _$defenseDiceSerializer = new _$DefenseDiceSerializer();

class _$DefenseDiceSerializer implements PrimitiveSerializer<DefenseDice> {
  static const Map<String, String> _toWire = const <String, String>{
    'white': 'white',
    'red': 'red',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'white': 'white',
    'red': 'red',
  };

  @override
  final Iterable<Type> types = const <Type>[DefenseDice];
  @override
  final String wireName = 'DefenseDice';

  @override
  Object serialize(Serializers serializers, DefenseDice object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DefenseDice deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DefenseDice.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
