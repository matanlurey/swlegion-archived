// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommandCard> _$commandCardSerializer = new _$CommandCardSerializer();

class _$CommandCardSerializer implements StructuredSerializer<CommandCard> {
  @override
  final Iterable<Type> types = const [CommandCard, _$CommandCard];
  @override
  final String wireName = 'CommandCard';

  @override
  Iterable serialize(Serializers serializers, CommandCard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'pips',
      serializers.serialize(object.pips, specifiedType: const FullType(int)),
      'activated',
      serializers.serialize(object.activated,
          specifiedType: const FullType(String)),
      'faction',
      serializers.serialize(object.faction,
          specifiedType: const FullType(Faction)),
      'required',
      serializers.serialize(object.required,
          specifiedType: const FullType(BuiltSet, const [
            const FullType(Reference, const [const FullType(Unit)])
          ])),
      'waves',
      serializers.serialize(object.waves,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Wave)])),
    ];
    if (object.weapon != null) {
      result
        ..add('weapon')
        ..add(serializers.serialize(object.weapon,
            specifiedType: const FullType(Weapon)));
    }

    return result;
  }

  @override
  CommandCard deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommandCardBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pips':
          result.pips = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'activated':
          result.activated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'faction':
          result.faction = serializers.deserialize(value,
              specifiedType: const FullType(Faction)) as Faction;
          break;
        case 'required':
          result.required.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltSet, const [
                const FullType(Reference, const [const FullType(Unit)])
              ])) as BuiltSet);
          break;
        case 'waves':
          result.waves.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Wave)]))
              as BuiltList);
          break;
        case 'weapon':
          result.weapon.replace(serializers.deserialize(value,
              specifiedType: const FullType(Weapon)) as Weapon);
          break;
      }
    }

    return result.build();
  }
}

class _$CommandCard extends CommandCard {
  @override
  final String id;
  @override
  final String name;
  @override
  final String text;
  @override
  final int pips;
  @override
  final String activated;
  @override
  final Faction faction;
  @override
  final BuiltSet<Reference<Unit>> required;
  @override
  final BuiltList<Wave> waves;
  @override
  final Weapon weapon;

  factory _$CommandCard([void Function(CommandCardBuilder) updates]) =>
      (new CommandCardBuilder()..update(updates)).build();

  _$CommandCard._(
      {this.id,
      this.name,
      this.text,
      this.pips,
      this.activated,
      this.faction,
      this.required,
      this.waves,
      this.weapon})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'name');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'text');
    }
    if (pips == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'pips');
    }
    if (activated == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'activated');
    }
    if (faction == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'faction');
    }
    if (required == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'required');
    }
    if (waves == null) {
      throw new BuiltValueNullFieldError('CommandCard', 'waves');
    }
  }

  @override
  CommandCard rebuild(void Function(CommandCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandCardBuilder toBuilder() => new CommandCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommandCard && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommandCard')
          ..add('id', id)
          ..add('name', name)
          ..add('text', text)
          ..add('pips', pips)
          ..add('activated', activated)
          ..add('faction', faction)
          ..add('required', required)
          ..add('waves', waves)
          ..add('weapon', weapon))
        .toString();
  }
}

class CommandCardBuilder implements Builder<CommandCard, CommandCardBuilder> {
  _$CommandCard _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _pips;
  int get pips => _$this._pips;
  set pips(int pips) => _$this._pips = pips;

  String _activated;
  String get activated => _$this._activated;
  set activated(String activated) => _$this._activated = activated;

  Faction _faction;
  Faction get faction => _$this._faction;
  set faction(Faction faction) => _$this._faction = faction;

  SetBuilder<Reference<Unit>> _required;
  SetBuilder<Reference<Unit>> get required =>
      _$this._required ??= new SetBuilder<Reference<Unit>>();
  set required(SetBuilder<Reference<Unit>> required) =>
      _$this._required = required;

  ListBuilder<Wave> _waves;
  ListBuilder<Wave> get waves => _$this._waves ??= new ListBuilder<Wave>();
  set waves(ListBuilder<Wave> waves) => _$this._waves = waves;

  WeaponBuilder _weapon;
  WeaponBuilder get weapon => _$this._weapon ??= new WeaponBuilder();
  set weapon(WeaponBuilder weapon) => _$this._weapon = weapon;

  CommandCardBuilder();

  CommandCardBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _text = _$v.text;
      _pips = _$v.pips;
      _activated = _$v.activated;
      _faction = _$v.faction;
      _required = _$v.required?.toBuilder();
      _waves = _$v.waves?.toBuilder();
      _weapon = _$v.weapon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommandCard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommandCard;
  }

  @override
  void update(void Function(CommandCardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommandCard build() {
    _$CommandCard _$result;
    try {
      _$result = _$v ??
          new _$CommandCard._(
              id: id,
              name: name,
              text: text,
              pips: pips,
              activated: activated,
              faction: faction,
              required: required.build(),
              waves: waves.build(),
              weapon: _weapon?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'required';
        required.build();
        _$failedField = 'waves';
        waves.build();
        _$failedField = 'weapon';
        _weapon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommandCard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
