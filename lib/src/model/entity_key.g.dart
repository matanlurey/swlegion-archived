// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntityKey> _$entityKeySerializer = new _$EntityKeySerializer();

class _$EntityKeySerializer implements StructuredSerializer<EntityKey> {
  @override
  final Iterable<Type> types = const [EntityKey, _$EntityKey];
  @override
  final String wireName = 'EntityKey';

  @override
  Iterable serialize(Serializers serializers, EntityKey object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EntityKey deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntityKeyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntityKey extends EntityKey {
  @override
  final String id;
  @override
  final String name;

  factory _$EntityKey([void updates(EntityKeyBuilder b)]) =>
      (new EntityKeyBuilder()..update(updates)).build();

  _$EntityKey._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('EntityKey', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('EntityKey', 'name');
    }
  }

  @override
  EntityKey rebuild(void updates(EntityKeyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityKeyBuilder toBuilder() => new EntityKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityKey && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EntityKey')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class EntityKeyBuilder implements Builder<EntityKey, EntityKeyBuilder> {
  _$EntityKey _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  EntityKeyBuilder();

  EntityKeyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityKey other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EntityKey;
  }

  @override
  void update(void updates(EntityKeyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EntityKey build() {
    final _$result = _$v ?? new _$EntityKey._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
