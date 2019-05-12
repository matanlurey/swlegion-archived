// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defense.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Defense> _$defenseSerializer = new _$DefenseSerializer();

class _$DefenseSerializer implements StructuredSerializer<Defense> {
  @override
  final Iterable<Type> types = const [Defense, _$Defense];
  @override
  final String wireName = 'Defense';

  @override
  Iterable serialize(Serializers serializers, Defense object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'blocks',
      serializers.serialize(object.blocks, specifiedType: const FullType(int)),
      'blanks',
      serializers.serialize(object.blanks, specifiedType: const FullType(int)),
      'dice',
      serializers.serialize(object.dice,
          specifiedType: const FullType(DefenseDice)),
    ];

    return result;
  }

  @override
  Defense deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefenseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'blocks':
          result.blocks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'blanks':
          result.blanks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dice':
          result.dice = serializers.deserialize(value,
              specifiedType: const FullType(DefenseDice)) as DefenseDice;
          break;
      }
    }

    return result.build();
  }
}

class _$Defense extends Defense {
  @override
  final int blocks;
  @override
  final int blanks;
  @override
  final DefenseDice dice;

  factory _$Defense([void Function(DefenseBuilder) updates]) =>
      (new DefenseBuilder()..update(updates)).build();

  _$Defense._({this.blocks, this.blanks, this.dice}) : super._() {
    if (blocks == null) {
      throw new BuiltValueNullFieldError('Defense', 'blocks');
    }
    if (blanks == null) {
      throw new BuiltValueNullFieldError('Defense', 'blanks');
    }
    if (dice == null) {
      throw new BuiltValueNullFieldError('Defense', 'dice');
    }
  }

  @override
  Defense rebuild(void Function(DefenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefenseBuilder toBuilder() => new DefenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Defense &&
        blocks == other.blocks &&
        blanks == other.blanks &&
        dice == other.dice;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, blocks.hashCode), blanks.hashCode), dice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Defense')
          ..add('blocks', blocks)
          ..add('blanks', blanks)
          ..add('dice', dice))
        .toString();
  }
}

class DefenseBuilder implements Builder<Defense, DefenseBuilder> {
  _$Defense _$v;

  int _blocks;
  int get blocks => _$this._blocks;
  set blocks(int blocks) => _$this._blocks = blocks;

  int _blanks;
  int get blanks => _$this._blanks;
  set blanks(int blanks) => _$this._blanks = blanks;

  DefenseDice _dice;
  DefenseDice get dice => _$this._dice;
  set dice(DefenseDice dice) => _$this._dice = dice;

  DefenseBuilder();

  DefenseBuilder get _$this {
    if (_$v != null) {
      _blocks = _$v.blocks;
      _blanks = _$v.blanks;
      _dice = _$v.dice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Defense other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Defense;
  }

  @override
  void update(void Function(DefenseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Defense build() {
    final _$result =
        _$v ?? new _$Defense._(blocks: blocks, blanks: blanks, dice: dice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
