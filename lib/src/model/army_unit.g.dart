// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'army_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArmyUnit> _$armyUnitSerializer = new _$ArmyUnitSerializer();

class _$ArmyUnitSerializer implements StructuredSerializer<ArmyUnit> {
  @override
  final Iterable<Type> types = const [ArmyUnit, _$ArmyUnit];
  @override
  final String wireName = 'ArmyUnit';

  @override
  Iterable serialize(Serializers serializers, ArmyUnit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'unit',
      serializers.serialize(object.unit,
          specifiedType: const FullType(UnitKey)),
      'upgrades',
      serializers.serialize(object.upgrades,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(UpgradeKey)])),
    ];

    return result;
  }

  @override
  ArmyUnit deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArmyUnitBuilder();

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
        case 'unit':
          result.unit.replace(serializers.deserialize(value,
              specifiedType: const FullType(UnitKey)) as UnitKey);
          break;
        case 'upgrades':
          result.upgrades.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltSet, const [const FullType(UpgradeKey)])) as BuiltSet);
          break;
      }
    }

    return result.build();
  }
}

class _$ArmyUnit extends ArmyUnit {
  @override
  final String id;
  @override
  final UnitKey unit;
  @override
  final BuiltSet<UpgradeKey> upgrades;

  factory _$ArmyUnit([void updates(ArmyUnitBuilder b)]) =>
      (new ArmyUnitBuilder()..update(updates)).build();

  _$ArmyUnit._({this.id, this.unit, this.upgrades}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ArmyUnit', 'id');
    }
    if (unit == null) {
      throw new BuiltValueNullFieldError('ArmyUnit', 'unit');
    }
    if (upgrades == null) {
      throw new BuiltValueNullFieldError('ArmyUnit', 'upgrades');
    }
  }

  @override
  ArmyUnit rebuild(void updates(ArmyUnitBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArmyUnitBuilder toBuilder() => new ArmyUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArmyUnit &&
        id == other.id &&
        unit == other.unit &&
        upgrades == other.upgrades;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), unit.hashCode), upgrades.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArmyUnit')
          ..add('id', id)
          ..add('unit', unit)
          ..add('upgrades', upgrades))
        .toString();
  }
}

class ArmyUnitBuilder implements Builder<ArmyUnit, ArmyUnitBuilder> {
  _$ArmyUnit _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  UnitKeyBuilder _unit;
  UnitKeyBuilder get unit => _$this._unit ??= new UnitKeyBuilder();
  set unit(UnitKeyBuilder unit) => _$this._unit = unit;

  SetBuilder<UpgradeKey> _upgrades;
  SetBuilder<UpgradeKey> get upgrades =>
      _$this._upgrades ??= new SetBuilder<UpgradeKey>();
  set upgrades(SetBuilder<UpgradeKey> upgrades) => _$this._upgrades = upgrades;

  ArmyUnitBuilder();

  ArmyUnitBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _unit = _$v.unit?.toBuilder();
      _upgrades = _$v.upgrades?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArmyUnit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ArmyUnit;
  }

  @override
  void update(void updates(ArmyUnitBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ArmyUnit build() {
    _$ArmyUnit _$result;
    try {
      _$result = _$v ??
          new _$ArmyUnit._(
              id: id, unit: unit.build(), upgrades: upgrades.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'unit';
        unit.build();
        _$failedField = 'upgrades';
        upgrades.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ArmyUnit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
