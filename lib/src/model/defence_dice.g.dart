// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defence_dice.dart';

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

const DefenceDice _$white = const DefenceDice._('white');
const DefenceDice _$red = const DefenceDice._('red');

DefenceDice _$valueOf(String name) {
  switch (name) {
    case 'white':
      return _$white;
    case 'red':
      return _$red;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DefenceDice> _$values =
    new BuiltSet<DefenceDice>(const <DefenceDice>[
  _$white,
  _$red,
]);

Serializer<DefenceDice> _$defenceDiceSerializer = new _$DefenceDiceSerializer();

class _$DefenceDiceSerializer implements PrimitiveSerializer<DefenceDice> {
  static const Map<String, String> _toWire = const <String, String>{
    'white': 'WHITE',
    'red': 'RED',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'WHITE': 'white',
    'RED': 'red',
  };

  @override
  final Iterable<Type> types = const <Type>[DefenceDice];
  @override
  final String wireName = 'DefenceDice';

  @override
  Object serialize(Serializers serializers, DefenceDice object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DefenceDice deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DefenceDice.valueOf(_fromWire[serialized] ?? serialized as String);
}
