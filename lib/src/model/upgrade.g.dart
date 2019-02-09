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
      'adds_upgrade_slots',
      serializers.serialize(object.addsUpgradeSlots,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UpgradeSlot), const FullType(int)])),
      'is_exhaustible',
      serializers.serialize(object.isExhaustible,
          specifiedType: const FullType(bool)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UpgradeKeyword), const FullType(Object)])),
      'keywords_for_unit',
      serializers.serialize(object.keywordsForUnit,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UnitKeyword), const FullType(Object)])),
      'restricted_to_unit',
      serializers.serialize(object.restrictedToUnit,
          specifiedType: const FullType(BuiltSet, const [
            const FullType(Reference, const [const FullType(Unit)])
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(UpgradeSlot)),
      'waves',
      serializers.serialize(object.waves,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Wave)])),
    ];
    if (object.restrictedToFaction != null) {
      result
        ..add('restricted_to_faction')
        ..add(serializers.serialize(object.restrictedToFaction,
            specifiedType: const FullType(Faction)));
    }
    if (object.restrictedToForceAlignment != null) {
      result
        ..add('restricted_to_force_alignment')
        ..add(serializers.serialize(object.restrictedToForceAlignment,
            specifiedType: const FullType(ForceAlignment)));
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
        case 'adds_upgrade_slots':
          result.addsUpgradeSlots.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UpgradeSlot),
                const FullType(int)
              ])) as BuiltMap);
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
                const FullType(UpgradeKeyword),
                const FullType(Object)
              ])) as BuiltMap);
          break;
        case 'keywords_for_unit':
          result.keywordsForUnit.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UnitKeyword),
                const FullType(Object)
              ])) as BuiltMap);
          break;
        case 'restricted_to_faction':
          result.restrictedToFaction = serializers.deserialize(value,
              specifiedType: const FullType(Faction)) as Faction;
          break;
        case 'restricted_to_force_alignment':
          result.restrictedToForceAlignment = serializers.deserialize(value,
              specifiedType: const FullType(ForceAlignment)) as ForceAlignment;
          break;
        case 'restricted_to_unit':
          result.restrictedToUnit.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltSet, const [
                const FullType(Reference, const [const FullType(Unit)])
              ])) as BuiltSet);
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
        case 'waves':
          result.waves.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Wave)]))
              as BuiltList);
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
  final BuiltMap<UpgradeSlot, int> addsUpgradeSlots;
  @override
  final bool isExhaustible;
  @override
  final int points;
  @override
  final BuiltMap<UpgradeKeyword, Object> keywords;
  @override
  final BuiltMap<UnitKeyword, Object> keywordsForUnit;
  @override
  final Faction restrictedToFaction;
  @override
  final ForceAlignment restrictedToForceAlignment;
  @override
  final BuiltSet<Reference<Unit>> restrictedToUnit;
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
  @override
  final BuiltList<Wave> waves;

  factory _$Upgrade([void updates(UpgradeBuilder b)]) =>
      (new UpgradeBuilder()..update(updates)).build();

  _$Upgrade._(
      {this.addsMiniature,
      this.addsUpgradeSlots,
      this.isExhaustible,
      this.points,
      this.keywords,
      this.keywordsForUnit,
      this.restrictedToFaction,
      this.restrictedToForceAlignment,
      this.restrictedToUnit,
      this.restrictedToType,
      this.id,
      this.name,
      this.text,
      this.type,
      this.weapon,
      this.waves})
      : super._() {
    if (addsMiniature == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'addsMiniature');
    }
    if (addsUpgradeSlots == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'addsUpgradeSlots');
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
    if (keywordsForUnit == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'keywordsForUnit');
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
    if (waves == null) {
      throw new BuiltValueNullFieldError('Upgrade', 'waves');
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
    return other is Upgrade && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Upgrade')
          ..add('addsMiniature', addsMiniature)
          ..add('addsUpgradeSlots', addsUpgradeSlots)
          ..add('isExhaustible', isExhaustible)
          ..add('points', points)
          ..add('keywords', keywords)
          ..add('keywordsForUnit', keywordsForUnit)
          ..add('restrictedToFaction', restrictedToFaction)
          ..add('restrictedToForceAlignment', restrictedToForceAlignment)
          ..add('restrictedToUnit', restrictedToUnit)
          ..add('restrictedToType', restrictedToType)
          ..add('id', id)
          ..add('name', name)
          ..add('text', text)
          ..add('type', type)
          ..add('weapon', weapon)
          ..add('waves', waves))
        .toString();
  }
}

class UpgradeBuilder implements Builder<Upgrade, UpgradeBuilder> {
  _$Upgrade _$v;

  bool _addsMiniature;
  bool get addsMiniature => _$this._addsMiniature;
  set addsMiniature(bool addsMiniature) =>
      _$this._addsMiniature = addsMiniature;

  MapBuilder<UpgradeSlot, int> _addsUpgradeSlots;
  MapBuilder<UpgradeSlot, int> get addsUpgradeSlots =>
      _$this._addsUpgradeSlots ??= new MapBuilder<UpgradeSlot, int>();
  set addsUpgradeSlots(MapBuilder<UpgradeSlot, int> addsUpgradeSlots) =>
      _$this._addsUpgradeSlots = addsUpgradeSlots;

  bool _isExhaustible;
  bool get isExhaustible => _$this._isExhaustible;
  set isExhaustible(bool isExhaustible) =>
      _$this._isExhaustible = isExhaustible;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  MapBuilder<UpgradeKeyword, Object> _keywords;
  MapBuilder<UpgradeKeyword, Object> get keywords =>
      _$this._keywords ??= new MapBuilder<UpgradeKeyword, Object>();
  set keywords(MapBuilder<UpgradeKeyword, Object> keywords) =>
      _$this._keywords = keywords;

  MapBuilder<UnitKeyword, Object> _keywordsForUnit;
  MapBuilder<UnitKeyword, Object> get keywordsForUnit =>
      _$this._keywordsForUnit ??= new MapBuilder<UnitKeyword, Object>();
  set keywordsForUnit(MapBuilder<UnitKeyword, Object> keywordsForUnit) =>
      _$this._keywordsForUnit = keywordsForUnit;

  Faction _restrictedToFaction;
  Faction get restrictedToFaction => _$this._restrictedToFaction;
  set restrictedToFaction(Faction restrictedToFaction) =>
      _$this._restrictedToFaction = restrictedToFaction;

  ForceAlignment _restrictedToForceAlignment;
  ForceAlignment get restrictedToForceAlignment =>
      _$this._restrictedToForceAlignment;
  set restrictedToForceAlignment(ForceAlignment restrictedToForceAlignment) =>
      _$this._restrictedToForceAlignment = restrictedToForceAlignment;

  SetBuilder<Reference<Unit>> _restrictedToUnit;
  SetBuilder<Reference<Unit>> get restrictedToUnit =>
      _$this._restrictedToUnit ??= new SetBuilder<Reference<Unit>>();
  set restrictedToUnit(SetBuilder<Reference<Unit>> restrictedToUnit) =>
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

  ListBuilder<Wave> _waves;
  ListBuilder<Wave> get waves => _$this._waves ??= new ListBuilder<Wave>();
  set waves(ListBuilder<Wave> waves) => _$this._waves = waves;

  UpgradeBuilder();

  UpgradeBuilder get _$this {
    if (_$v != null) {
      _addsMiniature = _$v.addsMiniature;
      _addsUpgradeSlots = _$v.addsUpgradeSlots?.toBuilder();
      _isExhaustible = _$v.isExhaustible;
      _points = _$v.points;
      _keywords = _$v.keywords?.toBuilder();
      _keywordsForUnit = _$v.keywordsForUnit?.toBuilder();
      _restrictedToFaction = _$v.restrictedToFaction;
      _restrictedToForceAlignment = _$v.restrictedToForceAlignment;
      _restrictedToUnit = _$v.restrictedToUnit?.toBuilder();
      _restrictedToType = _$v.restrictedToType;
      _id = _$v.id;
      _name = _$v.name;
      _text = _$v.text;
      _type = _$v.type;
      _weapon = _$v.weapon?.toBuilder();
      _waves = _$v.waves?.toBuilder();
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
              addsUpgradeSlots: addsUpgradeSlots.build(),
              isExhaustible: isExhaustible,
              points: points,
              keywords: keywords.build(),
              keywordsForUnit: keywordsForUnit.build(),
              restrictedToFaction: restrictedToFaction,
              restrictedToForceAlignment: restrictedToForceAlignment,
              restrictedToUnit: restrictedToUnit.build(),
              restrictedToType: restrictedToType,
              id: id,
              name: name,
              text: text,
              type: type,
              weapon: _weapon?.build(),
              waves: waves.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addsUpgradeSlots';
        addsUpgradeSlots.build();

        _$failedField = 'keywords';
        keywords.build();
        _$failedField = 'keywordsForUnit';
        keywordsForUnit.build();

        _$failedField = 'restrictedToUnit';
        restrictedToUnit.build();

        _$failedField = 'weapon';
        _weapon?.build();
        _$failedField = 'waves';
        waves.build();
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
