// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Attack> _$attackSerializer = new _$AttackSerializer();

class _$AttackSerializer implements StructuredSerializer<Attack> {
  @override
  final Iterable<Type> types = const [Attack, _$Attack];
  @override
  final String wireName = 'Attack';

  @override
  Iterable serialize(Serializers serializers, Attack object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'hits',
      serializers.serialize(object.hits,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AttackDice)])),
      'crits',
      serializers.serialize(object.crits,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AttackDice)])),
      'blanks',
      serializers.serialize(object.blanks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AttackDice)])),
    ];

    return result;
  }

  @override
  Attack deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hits':
          result.hits.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AttackDice)])) as BuiltList);
          break;
        case 'crits':
          result.crits.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AttackDice)])) as BuiltList);
          break;
        case 'blanks':
          result.blanks.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AttackDice)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Attack extends Attack {
  @override
  final BuiltList<AttackDice> hits;
  @override
  final BuiltList<AttackDice> crits;
  @override
  final BuiltList<AttackDice> blanks;

  factory _$Attack([void updates(AttackBuilder b)]) =>
      (new AttackBuilder()..update(updates)).build();

  _$Attack._({this.hits, this.crits, this.blanks}) : super._() {
    if (hits == null) {
      throw new BuiltValueNullFieldError('Attack', 'hits');
    }
    if (crits == null) {
      throw new BuiltValueNullFieldError('Attack', 'crits');
    }
    if (blanks == null) {
      throw new BuiltValueNullFieldError('Attack', 'blanks');
    }
  }

  @override
  Attack rebuild(void updates(AttackBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttackBuilder toBuilder() => new AttackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attack &&
        hits == other.hits &&
        crits == other.crits &&
        blanks == other.blanks;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, hits.hashCode), crits.hashCode), blanks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attack')
          ..add('hits', hits)
          ..add('crits', crits)
          ..add('blanks', blanks))
        .toString();
  }
}

class AttackBuilder implements Builder<Attack, AttackBuilder> {
  _$Attack _$v;

  ListBuilder<AttackDice> _hits;
  ListBuilder<AttackDice> get hits =>
      _$this._hits ??= new ListBuilder<AttackDice>();
  set hits(ListBuilder<AttackDice> hits) => _$this._hits = hits;

  ListBuilder<AttackDice> _crits;
  ListBuilder<AttackDice> get crits =>
      _$this._crits ??= new ListBuilder<AttackDice>();
  set crits(ListBuilder<AttackDice> crits) => _$this._crits = crits;

  ListBuilder<AttackDice> _blanks;
  ListBuilder<AttackDice> get blanks =>
      _$this._blanks ??= new ListBuilder<AttackDice>();
  set blanks(ListBuilder<AttackDice> blanks) => _$this._blanks = blanks;

  AttackBuilder();

  AttackBuilder get _$this {
    if (_$v != null) {
      _hits = _$v.hits?.toBuilder();
      _crits = _$v.crits?.toBuilder();
      _blanks = _$v.blanks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attack other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attack;
  }

  @override
  void update(void updates(AttackBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Attack build() {
    _$Attack _$result;
    try {
      _$result = _$v ??
          new _$Attack._(
              hits: hits.build(), crits: crits.build(), blanks: blanks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hits';
        hits.build();
        _$failedField = 'crits';
        crits.build();
        _$failedField = 'blanks';
        blanks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Attack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
