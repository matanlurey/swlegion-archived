// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Upgrade> _$upgradeSerializer = new _$UpgradeSerializer();

class _$UpgradeSerializer implements StructuredSerializer<Upgrade> {
  @override
  final Iterable<Type> types = const [Upgrade, _$Upgrade];
  @override
  final String wireName = 'Upgrade';

  @override
  Iterable serialize(Serializers serializers, Upgrade object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'adds_miniature',
      serializers.serialize(object.addsMiniature,
          specifiedType: const FullType(bool)),
      'is_exhaustible',
      serializers.serialize(object.isExhaustible,
          specifiedType: const FullType(bool)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(Keyword), const FullType(String)])),
      'restricted_to_unit',
      serializers.serialize(object.restrictedToUnit,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Unit)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(UpgradeSlot)),
    ];
    if (object.restrictedToFaction != null) {
      result
        ..add('restricted_to_faction')
        ..add(serializers.serialize(object.restrictedToFaction,
            specifiedType: const FullType(Faction)));
    }
    if (object.restrictedToType != null) {
      result
        ..add('restricted_to_type')
        ..add(serializers.serialize(object.restrictedToType,
            specifiedType: const FullType(UnitType)));
    }
    if (object.weapon != null) {
      result
        ..add('weapon')
        ..add(serializers.serialize(object.weapon,
            specifiedType: const FullType(Weapon)));
    }

    return result;
  }

  @override
  Upgrade deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpgradeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'adds_miniature':
          result.addsMiniature = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_exhaustible':
          result.isExhaustible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(Keyword),
                const FullType(String)
              ])) as BuiltMap);
          break;
        case 'restricted_to_faction':
          result.restrictedToFaction = serializers.deserialize(value,
              specifiedType: const FullType(Faction)) as Faction;
          break;
        case 'restricted_to_unit':
          result.restrictedToUnit.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Unit)]))
              as BuiltSet);
          break;
        case 'restricted_to_type':
          result.restrictedToType = serializers.deserialize(value,
              specifiedType: const FullType(UnitType)) as UnitType;
          break;
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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(UpgradeSlot)) as UpgradeSlot;
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

class _$Upgrade extends Upgrade {
  @override
  final bool addsMiniature;
  @override
  final bool isExhaustible;
  @override
  final int points;
  @override
  final BuiltMap<Keyword, String> keywords;
  @override
  final Faction restrictedToFaction;
  @override
  final BuiltSet<Unit> restrictedToUnit;
  @override
  final UnitType restrictedToType;
  @override
  final String id;
  @override
  final String name;
  @override
  final String text;
  @override
  final UpgradeSlot type;
  @override
  final Weapon weapon;

  factory _$Upgrade([void updates(UpgradeBuilder b)]) =>
      (new UpgradeBuilder()..update(updates)).build();

  _$Upgrade._(
      {this.addsMiniature,
      this.isExhaustible,
      this.points,
      this.keywords,
      this.restrictedToFaction,
      this.restrictedToUnit,
      this.restrictedToType,
      this.id,
      this.name,
      this.text,
      this.type,
      this.weapon})
      : super._() {
    if (addsMiniature == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'addsMiniature');
    }
    if (isExhaustible == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'isExhaustible');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'points');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'keywords');
    }
    if (restrictedToUnit == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'restrictedToUnit');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'name');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'text');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'type');
    }
  }

  @override
  Upgrade rebuild(void updates(UpgradeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UpgradeBuilder toBuilder() => new UpgradeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Upgrade &&
        restrictedToType == other.restrictedToType &&
        id == other.id &&
        type == other.type &&
        weapon == other.weapon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, restrictedToType.hashCode), id.hashCode), type.hashCode),
        weapon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Upgrade')
          ..add('addsMiniature', addsMiniature)
          ..add('isExhaustible', isExhaustible)
          ..add('points', points)
          ..add('keywords', keywords)
          ..add('restrictedToFaction', restrictedToFaction)
          ..add('restrictedToUnit', restrictedToUnit)
          ..add('restrictedToType', restrictedToType)
          ..add('id', id)
          ..add('name', name)
          ..add('text', text)
          ..add('type', type)
          ..add('weapon', weapon))
        .toString();
  }
}

class UpgradeBuilder implements Builder<Upgrade, UpgradeBuilder> {
  _$Upgrade _$v;

  bool _addsMiniature;
  bool get addsMiniature => _$this._addsMiniature;
  set addsMiniature(bool addsMiniature) =>
      _$this._addsMiniature = addsMiniature;

  bool _isExhaustible;
  bool get isExhaustible => _$this._isExhaustible;
  set isExhaustible(bool isExhaustible) =>
      _$this._isExhaustible = isExhaustible;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  MapBuilder<Keyword, String> _keywords;
  MapBuilder<Keyword, String> get keywords =>
      _$this._keywords ??= new MapBuilder<Keyword, String>();
  set keywords(MapBuilder<Keyword, String> keywords) =>
      _$this._keywords = keywords;

  Faction _restrictedToFaction;
  Faction get restrictedToFaction => _$this._restrictedToFaction;
  set restrictedToFaction(Faction restrictedToFaction) =>
      _$this._restrictedToFaction = restrictedToFaction;

  SetBuilder<Unit> _restrictedToUnit;
  SetBuilder<Unit> get restrictedToUnit =>
      _$this._restrictedToUnit ??= new SetBuilder<Unit>();
  set restrictedToUnit(SetBuilder<Unit> restrictedToUnit) =>
      _$this._restrictedToUnit = restrictedToUnit;

  UnitType _restrictedToType;
  UnitType get restrictedToType => _$this._restrictedToType;
  set restrictedToType(UnitType restrictedToType) =>
      _$this._restrictedToType = restrictedToType;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  UpgradeSlot _type;
  UpgradeSlot get type => _$this._type;
  set type(UpgradeSlot type) => _$this._type = type;

  WeaponBuilder _weapon;
  WeaponBuilder get weapon => _$this._weapon ??= new WeaponBuilder();
  set weapon(WeaponBuilder weapon) => _$this._weapon = weapon;

  UpgradeBuilder();

  UpgradeBuilder get _$this {
    if (_$v != null) {
      _addsMiniature = _$v.addsMiniature;
      _isExhaustible = _$v.isExhaustible;
      _points = _$v.points;
      _keywords = _$v.keywords?.toBuilder();
      _restrictedToFaction = _$v.restrictedToFaction;
      _restrictedToUnit = _$v.restrictedToUnit?.toBuilder();
      _restrictedToType = _$v.restrictedToType;
      _id = _$v.id;
      _name = _$v.name;
      _text = _$v.text;
      _type = _$v.type;
      _weapon = _$v.weapon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Upgrade other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Upgrade;
  }

  @override
  void update(void updates(UpgradeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Upgrade build() {
    _$Upgrade _$result;
    try {
      _$result = _$v ??
          new _$Upgrade._(
              addsMiniature: addsMiniature,
              isExhaustible: isExhaustible,
              points: points,
              keywords: keywords.build(),
              restrictedToFaction: restrictedToFaction,
              restrictedToUnit: restrictedToUnit.build(),
              restrictedToType: restrictedToType,
              id: id,
              name: name,
              text: text,
              type: type,
              weapon: _weapon?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'keywords';
        keywords.build();

        _$failedField = 'restrictedToUnit';
        restrictedToUnit.build();

        _$failedField = 'weapon';
        _weapon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Upgrade', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
