// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Rank _$commander = const Rank._('commander');
const Rank _$operative = const Rank._('operative');
const Rank _$corps = const Rank._('corps');
const Rank _$specialForces = const Rank._('specialForces');
const Rank _$support = const Rank._('support');
const Rank _$heavy = const Rank._('heavy');

Rank _$valueOf(String name) {
  switch (name) {
    case 'commander':
      return _$commander;
    case 'operative':
      return _$operative;
    case 'corps':
      return _$corps;
    case 'specialForces':
      return _$specialForces;
    case 'support':
      return _$support;
    case 'heavy':
      return _$heavy;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Rank> _$values = new BuiltSet<Rank>(const <Rank>[
  _$commander,
  _$operative,
  _$corps,
  _$specialForces,
  _$support,
  _$heavy,
]);

Serializer<Rank> _$rankSerializer = new _$RankSerializer();

class _$RankSerializer implements PrimitiveSerializer<Rank> {
  static const Map<String, String> _toWire = const <String, String>{
    'commander': 'commander',
    'operative': 'operative',
    'corps': 'corps',
    'specialForces': 'special-forces',
    'support': 'support',
    'heavy': 'heavy',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'commander': 'commander',
    'operative': 'operative',
    'corps': 'corps',
    'special-forces': 'specialForces',
    'support': 'support',
    'heavy': 'heavy',
  };

  @override
  final Iterable<Type> types = const <Type>[Rank];
  @override
  final String wireName = 'Rank';

  @override
  Object serialize(Serializers serializers, Rank object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Rank deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Rank.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
