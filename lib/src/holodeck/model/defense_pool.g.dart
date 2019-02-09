// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defense_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefensePool> _$defensePoolSerializer = new _$DefensePoolSerializer();

class _$DefensePoolSerializer implements StructuredSerializer<DefensePool> {
  @override
  final Iterable<Type> types = const [DefensePool, _$DefensePool];
  @override
  final String wireName = 'DefensePool';

  @override
  Iterable serialize(Serializers serializers, DefensePool object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'armor',
      serializers.serialize(object.armor, specifiedType: const FullType(bool)),
      'cover',
      serializers.serialize(object.cover, specifiedType: const FullType(int)),
      'deflect',
      serializers.serialize(object.deflect,
          specifiedType: const FullType(bool)),
      'dice',
      serializers.serialize(object.dice,
          specifiedType: const FullType(DefenseDice)),
      'targets',
      serializers.serialize(object.targets, specifiedType: const FullType(int)),
      'surge',
      serializers.serialize(object.surge, specifiedType: const FullType(bool)),
      'dodge',
      serializers.serialize(object.dodge, specifiedType: const FullType(int)),
      'guardians',
      serializers.serialize(object.guardians,
          specifiedType: const FullType(int)),
      'immuneToBlast',
      serializers.serialize(object.immuneToBlast,
          specifiedType: const FullType(bool)),
      'immuneToPierce',
      serializers.serialize(object.immuneToPierce,
          specifiedType: const FullType(bool)),
      'impervious',
      serializers.serialize(object.impervious,
          specifiedType: const FullType(bool)),
      'uncannyLuck',
      serializers.serialize(object.uncannyLuck,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  DefensePool deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefensePoolBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'armor':
          result.armor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deflect':
          result.deflect = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dice':
          result.dice = serializers.deserialize(value,
              specifiedType: const FullType(DefenseDice)) as DefenseDice;
          break;
        case 'targets':
          result.targets = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'surge':
          result.surge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dodge':
          result.dodge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'guardians':
          result.guardians = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'immuneToBlast':
          result.immuneToBlast = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'immuneToPierce':
          result.immuneToPierce = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'impervious':
          result.impervious = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'uncannyLuck':
          result.uncannyLuck = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DefensePool extends DefensePool {
  @override
  final bool armor;
  @override
  final int cover;
  @override
  final bool deflect;
  @override
  final DefenseDice dice;
  @override
  final int targets;
  @override
  final bool surge;
  @override
  final int dodge;
  @override
  final int guardians;
  @override
  final bool immuneToBlast;
  @override
  final bool immuneToPierce;
  @override
  final bool impervious;
  @override
  final int uncannyLuck;

  factory _$DefensePool([void updates(DefensePoolBuilder b)]) =>
      (new DefensePoolBuilder()..update(updates)).build();

  _$DefensePool._(
      {this.armor,
      this.cover,
      this.deflect,
      this.dice,
      this.targets,
      this.surge,
      this.dodge,
      this.guardians,
      this.immuneToBlast,
      this.immuneToPierce,
      this.impervious,
      this.uncannyLuck})
      : super._() {
    if (armor == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'armor');
    }
    if (cover == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'cover');
    }
    if (deflect == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'deflect');
    }
    if (dice == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'dice');
    }
    if (targets == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'targets');
    }
    if (surge == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'surge');
    }
    if (dodge == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'dodge');
    }
    if (guardians == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'guardians');
    }
    if (immuneToBlast == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'immuneToBlast');
    }
    if (immuneToPierce == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'immuneToPierce');
    }
    if (impervious == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'impervious');
    }
    if (uncannyLuck == null) {
      throw new BuiltValueNullFieldError('DefensePool', 'uncannyLuck');
    }
  }

  @override
  DefensePool rebuild(void updates(DefensePoolBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DefensePoolBuilder toBuilder() => new DefensePoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefensePool &&
        armor == other.armor &&
        cover == other.cover &&
        deflect == other.deflect &&
        dice == other.dice &&
        targets == other.targets &&
        surge == other.surge &&
        dodge == other.dodge &&
        guardians == other.guardians &&
        immuneToBlast == other.immuneToBlast &&
        immuneToPierce == other.immuneToPierce &&
        impervious == other.impervious &&
        uncannyLuck == other.uncannyLuck;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, armor.hashCode),
                                                cover.hashCode),
                                            deflect.hashCode),
                                        dice.hashCode),
                                    targets.hashCode),
                                surge.hashCode),
                            dodge.hashCode),
                        guardians.hashCode),
                    immuneToBlast.hashCode),
                immuneToPierce.hashCode),
            impervious.hashCode),
        uncannyLuck.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DefensePool')
          ..add('armor', armor)
          ..add('cover', cover)
          ..add('deflect', deflect)
          ..add('dice', dice)
          ..add('targets', targets)
          ..add('surge', surge)
          ..add('dodge', dodge)
          ..add('guardians', guardians)
          ..add('immuneToBlast', immuneToBlast)
          ..add('immuneToPierce', immuneToPierce)
          ..add('impervious', impervious)
          ..add('uncannyLuck', uncannyLuck))
        .toString();
  }
}

class DefensePoolBuilder implements Builder<DefensePool, DefensePoolBuilder> {
  _$DefensePool _$v;

  bool _armor;
  bool get armor => _$this._armor;
  set armor(bool armor) => _$this._armor = armor;

  int _cover;
  int get cover => _$this._cover;
  set cover(int cover) => _$this._cover = cover;

  bool _deflect;
  bool get deflect => _$this._deflect;
  set deflect(bool deflect) => _$this._deflect = deflect;

  DefenseDice _dice;
  DefenseDice get dice => _$this._dice;
  set dice(DefenseDice dice) => _$this._dice = dice;

  int _targets;
  int get targets => _$this._targets;
  set targets(int targets) => _$this._targets = targets;

  bool _surge;
  bool get surge => _$this._surge;
  set surge(bool surge) => _$this._surge = surge;

  int _dodge;
  int get dodge => _$this._dodge;
  set dodge(int dodge) => _$this._dodge = dodge;

  int _guardians;
  int get guardians => _$this._guardians;
  set guardians(int guardians) => _$this._guardians = guardians;

  bool _immuneToBlast;
  bool get immuneToBlast => _$this._immuneToBlast;
  set immuneToBlast(bool immuneToBlast) =>
      _$this._immuneToBlast = immuneToBlast;

  bool _immuneToPierce;
  bool get immuneToPierce => _$this._immuneToPierce;
  set immuneToPierce(bool immuneToPierce) =>
      _$this._immuneToPierce = immuneToPierce;

  bool _impervious;
  bool get impervious => _$this._impervious;
  set impervious(bool impervious) => _$this._impervious = impervious;

  int _uncannyLuck;
  int get uncannyLuck => _$this._uncannyLuck;
  set uncannyLuck(int uncannyLuck) => _$this._uncannyLuck = uncannyLuck;

  DefensePoolBuilder();

  DefensePoolBuilder get _$this {
    if (_$v != null) {
      _armor = _$v.armor;
      _cover = _$v.cover;
      _deflect = _$v.deflect;
      _dice = _$v.dice;
      _targets = _$v.targets;
      _surge = _$v.surge;
      _dodge = _$v.dodge;
      _guardians = _$v.guardians;
      _immuneToBlast = _$v.immuneToBlast;
      _immuneToPierce = _$v.immuneToPierce;
      _impervious = _$v.impervious;
      _uncannyLuck = _$v.uncannyLuck;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefensePool other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DefensePool;
  }

  @override
  void update(void updates(DefensePoolBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DefensePool build() {
    final _$result = _$v ??
        new _$DefensePool._(
            armor: armor,
            cover: cover,
            deflect: deflect,
            dice: dice,
            targets: targets,
            surge: surge,
            dodge: dodge,
            guardians: guardians,
            immuneToBlast: immuneToBlast,
            immuneToPierce: immuneToPierce,
            impervious: impervious,
            uncannyLuck: uncannyLuck);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
