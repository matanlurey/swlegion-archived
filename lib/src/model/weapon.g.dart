// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weapon> _$weaponSerializer = new _$WeaponSerializer();

class _$WeaponSerializer implements StructuredSerializer<Weapon> {
  @override
  final Iterable<Type> types = const [Weapon, _$Weapon];
  @override
  final String wireName = 'Weapon';

  @override
  Iterable serialize(Serializers serializers, Weapon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'dice',
      serializers.serialize(object.dice,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(AttackDice), const FullType(int)])),
      'area_of_effect',
      serializers.serialize(object.areaOfEffect,
          specifiedType: const FullType(int)),
      'min_range',
      serializers.serialize(object.minRange,
          specifiedType: const FullType(int)),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(WeaponKeyword), const FullType(Object)])),
    ];
    if (object.maxRange != null) {
      result
        ..add('max_range')
        ..add(serializers.serialize(object.maxRange,
            specifiedType: const FullType(int)));
    }
    if (object.surgeOverride != null) {
      result
        ..add('surge_override')
        ..add(serializers.serialize(object.surgeOverride,
            specifiedType: const FullType(AttackSurge)));
    }

    return result;
  }

  @override
  Weapon deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeaponBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dice':
          result.dice.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(AttackDice),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'area_of_effect':
          result.areaOfEffect = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'min_range':
          result.minRange = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'max_range':
          result.maxRange = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(WeaponKeyword),
                const FullType(Object)
              ])) as BuiltMap);
          break;
        case 'surge_override':
          result.surgeOverride = serializers.deserialize(value,
              specifiedType: const FullType(AttackSurge)) as AttackSurge;
          break;
      }
    }

    return result.build();
  }
}

class _$Weapon extends Weapon {
  @override
  final String name;
  @override
  final BuiltMap<AttackDice, int> dice;
  @override
  final int areaOfEffect;
  @override
  final int minRange;
  @override
  final int maxRange;
  @override
  final BuiltMap<WeaponKeyword, Object> keywords;
  @override
  final AttackSurge surgeOverride;

  factory _$Weapon([void Function(WeaponBuilder) updates]) =>
      (new WeaponBuilder()..update(updates)).build();

  _$Weapon._(
      {this.name,
      this.dice,
      this.areaOfEffect,
      this.minRange,
      this.maxRange,
      this.keywords,
      this.surgeOverride})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Weapon', 'name');
    }
    if (dice == null) {
      throw new BuiltValueNullFieldError('Weapon', 'dice');
    }
    if (areaOfEffect == null) {
      throw new BuiltValueNullFieldError('Weapon', 'areaOfEffect');
    }
    if (minRange == null) {
      throw new BuiltValueNullFieldError('Weapon', 'minRange');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('Weapon', 'keywords');
    }
  }

  @override
  Weapon rebuild(void Function(WeaponBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeaponBuilder toBuilder() => new WeaponBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weapon &&
        name == other.name &&
        dice == other.dice &&
        areaOfEffect == other.areaOfEffect &&
        minRange == other.minRange &&
        maxRange == other.maxRange &&
        keywords == other.keywords &&
        surgeOverride == other.surgeOverride;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), dice.hashCode),
                        areaOfEffect.hashCode),
                    minRange.hashCode),
                maxRange.hashCode),
            keywords.hashCode),
        surgeOverride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weapon')
          ..add('name', name)
          ..add('dice', dice)
          ..add('areaOfEffect', areaOfEffect)
          ..add('minRange', minRange)
          ..add('maxRange', maxRange)
          ..add('keywords', keywords)
          ..add('surgeOverride', surgeOverride))
        .toString();
  }
}

class WeaponBuilder implements Builder<Weapon, WeaponBuilder> {
  _$Weapon _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MapBuilder<AttackDice, int> _dice;
  MapBuilder<AttackDice, int> get dice =>
      _$this._dice ??= new MapBuilder<AttackDice, int>();
  set dice(MapBuilder<AttackDice, int> dice) => _$this._dice = dice;

  int _areaOfEffect;
  int get areaOfEffect => _$this._areaOfEffect;
  set areaOfEffect(int areaOfEffect) => _$this._areaOfEffect = areaOfEffect;

  int _minRange;
  int get minRange => _$this._minRange;
  set minRange(int minRange) => _$this._minRange = minRange;

  int _maxRange;
  int get maxRange => _$this._maxRange;
  set maxRange(int maxRange) => _$this._maxRange = maxRange;

  MapBuilder<WeaponKeyword, Object> _keywords;
  MapBuilder<WeaponKeyword, Object> get keywords =>
      _$this._keywords ??= new MapBuilder<WeaponKeyword, Object>();
  set keywords(MapBuilder<WeaponKeyword, Object> keywords) =>
      _$this._keywords = keywords;

  AttackSurge _surgeOverride;
  AttackSurge get surgeOverride => _$this._surgeOverride;
  set surgeOverride(AttackSurge surgeOverride) =>
      _$this._surgeOverride = surgeOverride;

  WeaponBuilder();

  WeaponBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _dice = _$v.dice?.toBuilder();
      _areaOfEffect = _$v.areaOfEffect;
      _minRange = _$v.minRange;
      _maxRange = _$v.maxRange;
      _keywords = _$v.keywords?.toBuilder();
      _surgeOverride = _$v.surgeOverride;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weapon other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weapon;
  }

  @override
  void update(void Function(WeaponBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weapon build() {
    _$Weapon _$result;
    try {
      _$result = _$v ??
          new _$Weapon._(
              name: name,
              dice: dice.build(),
              areaOfEffect: areaOfEffect,
              minRange: minRange,
              maxRange: maxRange,
              keywords: keywords.build(),
              surgeOverride: surgeOverride);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dice';
        dice.build();

        _$failedField = 'keywords';
        keywords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Weapon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
