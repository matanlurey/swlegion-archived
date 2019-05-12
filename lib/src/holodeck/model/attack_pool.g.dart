// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttackPool> _$attackPoolSerializer = new _$AttackPoolSerializer();

class _$AttackPoolSerializer implements StructuredSerializer<AttackPool> {
  @override
  final Iterable<Type> types = const [AttackPool, _$AttackPool];
  @override
  final String wireName = 'AttackPool';

  @override
  Iterable serialize(Serializers serializers, AttackPool object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'aim_tokens',
      serializers.serialize(object.aimTokens,
          specifiedType: const FullType(int)),
      'dice',
      serializers.serialize(object.dice,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(AttackDice), const FullType(int)])),
      'spray',
      serializers.serialize(object.spray,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(AttackDice), const FullType(int)])),
      'high_velocity',
      serializers.serialize(object.highVelocity,
          specifiedType: const FullType(bool)),
      'pierce',
      serializers.serialize(object.pierce, specifiedType: const FullType(int)),
      'diceToReroll',
      serializers.serialize(object.diceToReroll,
          specifiedType: const FullType(int)),
      'impact',
      serializers.serialize(object.impact, specifiedType: const FullType(int)),
      'sharpshooter',
      serializers.serialize(object.sharpshooter,
          specifiedType: const FullType(int)),
      'blast',
      serializers.serialize(object.blast, specifiedType: const FullType(bool)),
      'melee',
      serializers.serialize(object.melee, specifiedType: const FullType(bool)),
    ];
    if (object.surge != null) {
      result
        ..add('surge')
        ..add(serializers.serialize(object.surge,
            specifiedType: const FullType(AttackSurge)));
    }

    return result;
  }

  @override
  AttackPool deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttackPoolBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aim_tokens':
          result.aimTokens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'surge':
          result.surge = serializers.deserialize(value,
              specifiedType: const FullType(AttackSurge)) as AttackSurge;
          break;
        case 'dice':
          result.dice.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(AttackDice),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'spray':
          result.spray.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(AttackDice),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'high_velocity':
          result.highVelocity = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pierce':
          result.pierce = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'diceToReroll':
          result.diceToReroll = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'impact':
          result.impact = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sharpshooter':
          result.sharpshooter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'blast':
          result.blast = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'melee':
          result.melee = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AttackPool extends AttackPool {
  @override
  final int aimTokens;
  @override
  final AttackSurge surge;
  @override
  final BuiltMap<AttackDice, int> dice;
  @override
  final BuiltMap<AttackDice, int> spray;
  @override
  final bool highVelocity;
  @override
  final int pierce;
  @override
  final int diceToReroll;
  @override
  final int impact;
  @override
  final int sharpshooter;
  @override
  final bool blast;
  @override
  final bool melee;

  factory _$AttackPool([void Function(AttackPoolBuilder) updates]) =>
      (new AttackPoolBuilder()..update(updates)).build();

  _$AttackPool._(
      {this.aimTokens,
      this.surge,
      this.dice,
      this.spray,
      this.highVelocity,
      this.pierce,
      this.diceToReroll,
      this.impact,
      this.sharpshooter,
      this.blast,
      this.melee})
      : super._() {
    if (aimTokens == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'aimTokens');
    }
    if (dice == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'dice');
    }
    if (spray == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'spray');
    }
    if (highVelocity == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'highVelocity');
    }
    if (pierce == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'pierce');
    }
    if (diceToReroll == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'diceToReroll');
    }
    if (impact == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'impact');
    }
    if (sharpshooter == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'sharpshooter');
    }
    if (blast == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'blast');
    }
    if (melee == null) {
      throw new BuiltValueNullFieldError('AttackPool', 'melee');
    }
  }

  @override
  AttackPool rebuild(void Function(AttackPoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttackPoolBuilder toBuilder() => new AttackPoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttackPool &&
        aimTokens == other.aimTokens &&
        surge == other.surge &&
        dice == other.dice &&
        spray == other.spray &&
        highVelocity == other.highVelocity &&
        pierce == other.pierce &&
        diceToReroll == other.diceToReroll &&
        impact == other.impact &&
        sharpshooter == other.sharpshooter &&
        blast == other.blast &&
        melee == other.melee;
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
                                        $jc($jc(0, aimTokens.hashCode),
                                            surge.hashCode),
                                        dice.hashCode),
                                    spray.hashCode),
                                highVelocity.hashCode),
                            pierce.hashCode),
                        diceToReroll.hashCode),
                    impact.hashCode),
                sharpshooter.hashCode),
            blast.hashCode),
        melee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttackPool')
          ..add('aimTokens', aimTokens)
          ..add('surge', surge)
          ..add('dice', dice)
          ..add('spray', spray)
          ..add('highVelocity', highVelocity)
          ..add('pierce', pierce)
          ..add('diceToReroll', diceToReroll)
          ..add('impact', impact)
          ..add('sharpshooter', sharpshooter)
          ..add('blast', blast)
          ..add('melee', melee))
        .toString();
  }
}

class AttackPoolBuilder implements Builder<AttackPool, AttackPoolBuilder> {
  _$AttackPool _$v;

  int _aimTokens;
  int get aimTokens => _$this._aimTokens;
  set aimTokens(int aimTokens) => _$this._aimTokens = aimTokens;

  AttackSurge _surge;
  AttackSurge get surge => _$this._surge;
  set surge(AttackSurge surge) => _$this._surge = surge;

  MapBuilder<AttackDice, int> _dice;
  MapBuilder<AttackDice, int> get dice =>
      _$this._dice ??= new MapBuilder<AttackDice, int>();
  set dice(MapBuilder<AttackDice, int> dice) => _$this._dice = dice;

  MapBuilder<AttackDice, int> _spray;
  MapBuilder<AttackDice, int> get spray =>
      _$this._spray ??= new MapBuilder<AttackDice, int>();
  set spray(MapBuilder<AttackDice, int> spray) => _$this._spray = spray;

  bool _highVelocity;
  bool get highVelocity => _$this._highVelocity;
  set highVelocity(bool highVelocity) => _$this._highVelocity = highVelocity;

  int _pierce;
  int get pierce => _$this._pierce;
  set pierce(int pierce) => _$this._pierce = pierce;

  int _diceToReroll;
  int get diceToReroll => _$this._diceToReroll;
  set diceToReroll(int diceToReroll) => _$this._diceToReroll = diceToReroll;

  int _impact;
  int get impact => _$this._impact;
  set impact(int impact) => _$this._impact = impact;

  int _sharpshooter;
  int get sharpshooter => _$this._sharpshooter;
  set sharpshooter(int sharpshooter) => _$this._sharpshooter = sharpshooter;

  bool _blast;
  bool get blast => _$this._blast;
  set blast(bool blast) => _$this._blast = blast;

  bool _melee;
  bool get melee => _$this._melee;
  set melee(bool melee) => _$this._melee = melee;

  AttackPoolBuilder();

  AttackPoolBuilder get _$this {
    if (_$v != null) {
      _aimTokens = _$v.aimTokens;
      _surge = _$v.surge;
      _dice = _$v.dice?.toBuilder();
      _spray = _$v.spray?.toBuilder();
      _highVelocity = _$v.highVelocity;
      _pierce = _$v.pierce;
      _diceToReroll = _$v.diceToReroll;
      _impact = _$v.impact;
      _sharpshooter = _$v.sharpshooter;
      _blast = _$v.blast;
      _melee = _$v.melee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttackPool other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttackPool;
  }

  @override
  void update(void Function(AttackPoolBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttackPool build() {
    _$AttackPool _$result;
    try {
      _$result = _$v ??
          new _$AttackPool._(
              aimTokens: aimTokens,
              surge: surge,
              dice: dice.build(),
              spray: spray.build(),
              highVelocity: highVelocity,
              pierce: pierce,
              diceToReroll: diceToReroll,
              impact: impact,
              sharpshooter: sharpshooter,
              blast: blast,
              melee: melee);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dice';
        dice.build();
        _$failedField = 'spray';
        spray.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AttackPool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
