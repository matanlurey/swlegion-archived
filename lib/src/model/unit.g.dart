// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Unit> _$unitSerializer = new _$UnitSerializer();

class _$UnitSerializer implements StructuredSerializer<Unit> {
  @override
  final Iterable<Type> types = const [Unit, _$Unit];
  @override
  final String wireName = 'Unit';

  @override
  Iterable serialize(Serializers serializers, Unit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'is_unique',
      serializers.serialize(object.isUnique,
          specifiedType: const FullType(bool)),
      'faction',
      serializers.serialize(object.faction,
          specifiedType: const FullType(Faction)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(UnitType)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(Rank)),
      'miniatures',
      serializers.serialize(object.miniatures,
          specifiedType: const FullType(int)),
      'wounds',
      serializers.serialize(object.wounds, specifiedType: const FullType(int)),
      'defense',
      serializers.serialize(object.defense,
          specifiedType: const FullType(DefenseDice)),
      'has_defense_surge',
      serializers.serialize(object.hasDefenseSurge,
          specifiedType: const FullType(bool)),
      'speed',
      serializers.serialize(object.speed, specifiedType: const FullType(int)),
      'upgrades',
      serializers.serialize(object.upgrades,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UpgradeSlot), const FullType(int)])),
      'weapons',
      serializers.serialize(object.weapons,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Weapon)])),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UnitKeyword), const FullType(Object)])),
      'waves',
      serializers.serialize(object.waves,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Wave)])),
    ];
    if (object.subTitle != null) {
      result
        ..add('sub_title')
        ..add(serializers.serialize(object.subTitle,
            specifiedType: const FullType(String)));
    }
    if (object.forceAlignment != null) {
      result
        ..add('force_alignment')
        ..add(serializers.serialize(object.forceAlignment,
            specifiedType: const FullType(ForceAlignment)));
    }
    if (object.courage != null) {
      result
        ..add('courage')
        ..add(serializers.serialize(object.courage,
            specifiedType: const FullType(int)));
    }
    if (object.resilience != null) {
      result
        ..add('resilience')
        ..add(serializers.serialize(object.resilience,
            specifiedType: const FullType(int)));
    }
    if (object.attackSurge != null) {
      result
        ..add('attack_surge')
        ..add(serializers.serialize(object.attackSurge,
            specifiedType: const FullType(AttackSurge)));
    }

    return result;
  }

  @override
  Unit deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnitBuilder();

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
        case 'is_unique':
          result.isUnique = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sub_title':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'faction':
          result.faction = serializers.deserialize(value,
              specifiedType: const FullType(Faction)) as Faction;
          break;
        case 'force_alignment':
          result.forceAlignment = serializers.deserialize(value,
              specifiedType: const FullType(ForceAlignment)) as ForceAlignment;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(UnitType)) as UnitType;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(Rank)) as Rank;
          break;
        case 'miniatures':
          result.miniatures = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wounds':
          result.wounds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'courage':
          result.courage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'resilience':
          result.resilience = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'defense':
          result.defense = serializers.deserialize(value,
              specifiedType: const FullType(DefenseDice)) as DefenseDice;
          break;
        case 'attack_surge':
          result.attackSurge = serializers.deserialize(value,
              specifiedType: const FullType(AttackSurge)) as AttackSurge;
          break;
        case 'has_defense_surge':
          result.hasDefenseSurge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'upgrades':
          result.upgrades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UpgradeSlot),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'weapons':
          result.weapons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Weapon)]))
              as BuiltSet);
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UnitKeyword),
                const FullType(Object)
              ])) as BuiltMap);
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

class _$Unit extends Unit {
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isUnique;
  @override
  final String subTitle;
  @override
  final Faction faction;
  @override
  final ForceAlignment forceAlignment;
  @override
  final UnitType type;
  @override
  final int points;
  @override
  final Rank rank;
  @override
  final int miniatures;
  @override
  final int wounds;
  @override
  final int courage;
  @override
  final int resilience;
  @override
  final DefenseDice defense;
  @override
  final AttackSurge attackSurge;
  @override
  final bool hasDefenseSurge;
  @override
  final int speed;
  @override
  final BuiltMap<UpgradeSlot, int> upgrades;
  @override
  final BuiltSet<Weapon> weapons;
  @override
  final BuiltMap<UnitKeyword, Object> keywords;
  @override
  final BuiltList<Wave> waves;

  factory _$Unit([void Function(UnitBuilder) updates]) =>
      (new UnitBuilder()..update(updates)).build();

  _$Unit._(
      {this.id,
      this.name,
      this.isUnique,
      this.subTitle,
      this.faction,
      this.forceAlignment,
      this.type,
      this.points,
      this.rank,
      this.miniatures,
      this.wounds,
      this.courage,
      this.resilience,
      this.defense,
      this.attackSurge,
      this.hasDefenseSurge,
      this.speed,
      this.upgrades,
      this.weapons,
      this.keywords,
      this.waves})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Unit', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Unit', 'name');
    }
    if (isUnique == null) {
      throw new BuiltValueNullFieldError('Unit', 'isUnique');
    }
    if (faction == null) {
      throw new BuiltValueNullFieldError('Unit', 'faction');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Unit', 'type');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('Unit', 'points');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('Unit', 'rank');
    }
    if (miniatures == null) {
      throw new BuiltValueNullFieldError('Unit', 'miniatures');
    }
    if (wounds == null) {
      throw new BuiltValueNullFieldError('Unit', 'wounds');
    }
    if (defense == null) {
      throw new BuiltValueNullFieldError('Unit', 'defense');
    }
    if (hasDefenseSurge == null) {
      throw new BuiltValueNullFieldError('Unit', 'hasDefenseSurge');
    }
    if (speed == null) {
      throw new BuiltValueNullFieldError('Unit', 'speed');
    }
    if (upgrades == null) {
      throw new BuiltValueNullFieldError('Unit', 'upgrades');
    }
    if (weapons == null) {
      throw new BuiltValueNullFieldError('Unit', 'weapons');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('Unit', 'keywords');
    }
    if (waves == null) {
      throw new BuiltValueNullFieldError('Unit', 'waves');
    }
  }

  @override
  Unit rebuild(void Function(UnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnitBuilder toBuilder() => new UnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Unit && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Unit')
          ..add('id', id)
          ..add('name', name)
          ..add('isUnique', isUnique)
          ..add('subTitle', subTitle)
          ..add('faction', faction)
          ..add('forceAlignment', forceAlignment)
          ..add('type', type)
          ..add('points', points)
          ..add('rank', rank)
          ..add('miniatures', miniatures)
          ..add('wounds', wounds)
          ..add('courage', courage)
          ..add('resilience', resilience)
          ..add('defense', defense)
          ..add('attackSurge', attackSurge)
          ..add('hasDefenseSurge', hasDefenseSurge)
          ..add('speed', speed)
          ..add('upgrades', upgrades)
          ..add('weapons', weapons)
          ..add('keywords', keywords)
          ..add('waves', waves))
        .toString();
  }
}

class UnitBuilder implements Builder<Unit, UnitBuilder> {
  _$Unit _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isUnique;
  bool get isUnique => _$this._isUnique;
  set isUnique(bool isUnique) => _$this._isUnique = isUnique;

  String _subTitle;
  String get subTitle => _$this._subTitle;
  set subTitle(String subTitle) => _$this._subTitle = subTitle;

  Faction _faction;
  Faction get faction => _$this._faction;
  set faction(Faction faction) => _$this._faction = faction;

  ForceAlignment _forceAlignment;
  ForceAlignment get forceAlignment => _$this._forceAlignment;
  set forceAlignment(ForceAlignment forceAlignment) =>
      _$this._forceAlignment = forceAlignment;

  UnitType _type;
  UnitType get type => _$this._type;
  set type(UnitType type) => _$this._type = type;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  Rank _rank;
  Rank get rank => _$this._rank;
  set rank(Rank rank) => _$this._rank = rank;

  int _miniatures;
  int get miniatures => _$this._miniatures;
  set miniatures(int miniatures) => _$this._miniatures = miniatures;

  int _wounds;
  int get wounds => _$this._wounds;
  set wounds(int wounds) => _$this._wounds = wounds;

  int _courage;
  int get courage => _$this._courage;
  set courage(int courage) => _$this._courage = courage;

  int _resilience;
  int get resilience => _$this._resilience;
  set resilience(int resilience) => _$this._resilience = resilience;

  DefenseDice _defense;
  DefenseDice get defense => _$this._defense;
  set defense(DefenseDice defense) => _$this._defense = defense;

  AttackSurge _attackSurge;
  AttackSurge get attackSurge => _$this._attackSurge;
  set attackSurge(AttackSurge attackSurge) => _$this._attackSurge = attackSurge;

  bool _hasDefenseSurge;
  bool get hasDefenseSurge => _$this._hasDefenseSurge;
  set hasDefenseSurge(bool hasDefenseSurge) =>
      _$this._hasDefenseSurge = hasDefenseSurge;

  int _speed;
  int get speed => _$this._speed;
  set speed(int speed) => _$this._speed = speed;

  MapBuilder<UpgradeSlot, int> _upgrades;
  MapBuilder<UpgradeSlot, int> get upgrades =>
      _$this._upgrades ??= new MapBuilder<UpgradeSlot, int>();
  set upgrades(MapBuilder<UpgradeSlot, int> upgrades) =>
      _$this._upgrades = upgrades;

  SetBuilder<Weapon> _weapons;
  SetBuilder<Weapon> get weapons =>
      _$this._weapons ??= new SetBuilder<Weapon>();
  set weapons(SetBuilder<Weapon> weapons) => _$this._weapons = weapons;

  MapBuilder<UnitKeyword, Object> _keywords;
  MapBuilder<UnitKeyword, Object> get keywords =>
      _$this._keywords ??= new MapBuilder<UnitKeyword, Object>();
  set keywords(MapBuilder<UnitKeyword, Object> keywords) =>
      _$this._keywords = keywords;

  ListBuilder<Wave> _waves;
  ListBuilder<Wave> get waves => _$this._waves ??= new ListBuilder<Wave>();
  set waves(ListBuilder<Wave> waves) => _$this._waves = waves;

  UnitBuilder();

  UnitBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _isUnique = _$v.isUnique;
      _subTitle = _$v.subTitle;
      _faction = _$v.faction;
      _forceAlignment = _$v.forceAlignment;
      _type = _$v.type;
      _points = _$v.points;
      _rank = _$v.rank;
      _miniatures = _$v.miniatures;
      _wounds = _$v.wounds;
      _courage = _$v.courage;
      _resilience = _$v.resilience;
      _defense = _$v.defense;
      _attackSurge = _$v.attackSurge;
      _hasDefenseSurge = _$v.hasDefenseSurge;
      _speed = _$v.speed;
      _upgrades = _$v.upgrades?.toBuilder();
      _weapons = _$v.weapons?.toBuilder();
      _keywords = _$v.keywords?.toBuilder();
      _waves = _$v.waves?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Unit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Unit;
  }

  @override
  void update(void Function(UnitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Unit build() {
    _$Unit _$result;
    try {
      _$result = _$v ??
          new _$Unit._(
              id: id,
              name: name,
              isUnique: isUnique,
              subTitle: subTitle,
              faction: faction,
              forceAlignment: forceAlignment,
              type: type,
              points: points,
              rank: rank,
              miniatures: miniatures,
              wounds: wounds,
              courage: courage,
              resilience: resilience,
              defense: defense,
              attackSurge: attackSurge,
              hasDefenseSurge: hasDefenseSurge,
              speed: speed,
              upgrades: upgrades.build(),
              weapons: weapons.build(),
              keywords: keywords.build(),
              waves: waves.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'upgrades';
        upgrades.build();
        _$failedField = 'weapons';
        weapons.build();
        _$failedField = 'keywords';
        keywords.build();
        _$failedField = 'waves';
        waves.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Unit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
