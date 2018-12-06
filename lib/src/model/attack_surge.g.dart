// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_surge.dart';

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

const AttackSurge _$hit = const AttackSurge._('hit');
const AttackSurge _$crit = const AttackSurge._('critical');

AttackSurge _$valueOf(String name) {
  switch (name) {
    case 'hit':
      return _$hit;
    case 'critical':
      return _$crit;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AttackSurge> _$values =
    new BuiltSet<AttackSurge>(const <AttackSurge>[
  _$hit,
  _$crit,
]);

Serializer<AttackSurge> _$attackSurgeSerializer = new _$AttackSurgeSerializer();

class _$AttackSurgeSerializer implements PrimitiveSerializer<AttackSurge> {
  static const Map<String, String> _toWire = const <String, String>{
    'hit': 'HIT',
    'critical': 'CRIT',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'HIT': 'hit',
    'CRIT': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[AttackSurge];
  @override
  final String wireName = 'AttackSurge';

  @override
  Object serialize(Serializers serializers, AttackSurge object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AttackSurge deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AttackSurge.valueOf(_fromWire[serialized] ?? serialized as String);
}
