// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_dice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttackDice _$white = const AttackDice._('white');
const AttackDice _$black = const AttackDice._('black');
const AttackDice _$red = const AttackDice._('red');

AttackDice _$valueOf(String name) {
  switch (name) {
    case 'white':
      return _$white;
    case 'black':
      return _$black;
    case 'red':
      return _$red;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AttackDice> _$values =
    new BuiltSet<AttackDice>(const <AttackDice>[
  _$white,
  _$black,
  _$red,
]);

Serializer<AttackDice> _$attackDiceSerializer = new _$AttackDiceSerializer();

class _$AttackDiceSerializer implements PrimitiveSerializer<AttackDice> {
  static const Map<String, String> _toWire = const <String, String>{
    'white': 'white',
    'black': 'black',
    'red': 'red',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'white': 'white',
    'black': 'black',
    'red': 'red',
  };

  @override
  final Iterable<Type> types = const <Type>[AttackDice];
  @override
  final String wireName = 'AttackDice';

  @override
  Object serialize(Serializers serializers, AttackDice object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AttackDice deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AttackDice.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
