// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'army.dart';

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

Serializer<Army> _$armySerializer = new _$ArmySerializer();

class _$ArmySerializer implements StructuredSerializer<Army> {
  @override
  final Iterable<Type> types = const [Army, _$Army];
  @override
  final String wireName = 'Army';

  @override
  Iterable serialize(Serializers serializers, Army object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Army deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new ArmyBuilder().build();
  }
}

class _$Army extends Army {
  factory _$Army([void updates(ArmyBuilder b)]) =>
      (new ArmyBuilder()..update(updates)).build();

  _$Army._() : super._();

  @override
  Army rebuild(void updates(ArmyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArmyBuilder toBuilder() => new ArmyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Army;
  }

  @override
  int get hashCode {
    return 405112211;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Army').toString();
  }
}

class ArmyBuilder implements Builder<Army, ArmyBuilder> {
  _$Army _$v;

  ArmyBuilder();

  @override
  void replace(Army other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Army;
  }

  @override
  void update(void updates(ArmyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Army build() {
    final _$result = _$v ?? new _$Army._();
    replace(_$result);
    return _$result;
  }
}
