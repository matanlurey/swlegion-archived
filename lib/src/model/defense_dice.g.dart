// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defense_dice.dart';

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
    'white': 'WHITE',
    'red': 'RED',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'WHITE': 'white',
    'RED': 'red',
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
