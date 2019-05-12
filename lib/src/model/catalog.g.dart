// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Catalog> _$catalogSerializer = new _$CatalogSerializer();

class _$CatalogSerializer implements StructuredSerializer<Catalog> {
  @override
  final Iterable<Type> types = const [Catalog, _$Catalog];
  @override
  final String wireName = 'Catalog';

  @override
  Iterable serialize(Serializers serializers, Catalog object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'commandCards',
      serializers.serialize(object.commandCards,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CommandCard)])),
      'units',
      serializers.serialize(object.units,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Unit)])),
      'upgrades',
      serializers.serialize(object.upgrades,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Upgrade)])),
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Catalog deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatalogBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'commandCards':
          result.commandCards.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommandCard)]))
              as BuiltList);
          break;
        case 'units':
          result.units.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Unit)]))
              as BuiltList);
          break;
        case 'upgrades':
          result.upgrades.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Upgrade)])) as BuiltList);
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Catalog extends Catalog {
  @override
  final BuiltList<CommandCard> commandCards;
  @override
  final BuiltList<Unit> units;
  @override
  final BuiltList<Upgrade> upgrades;
  @override
  final int version;
  Map<Reference<CommandCard>, CommandCard> ___commandCardsIndexed;
  Map<Reference<Unit>, Unit> ___unitsIndexed;
  Map<Reference<Upgrade>, Upgrade> ___upgradesIndexed;

  factory _$Catalog([void Function(CatalogBuilder) updates]) =>
      (new CatalogBuilder()..update(updates)).build();

  _$Catalog._({this.commandCards, this.units, this.upgrades, this.version})
      : super._() {
    if (commandCards == null) {
      throw new BuiltValueNullFieldError('Catalog', 'commandCards');
    }
    if (units == null) {
      throw new BuiltValueNullFieldError('Catalog', 'units');
    }
    if (upgrades == null) {
      throw new BuiltValueNullFieldError('Catalog', 'upgrades');
    }
    if (version == null) {
      throw new BuiltValueNullFieldError('Catalog', 'version');
    }
  }

  @override
  Map<Reference<CommandCard>, CommandCard> get _commandCardsIndexed =>
      ___commandCardsIndexed ??= super._commandCardsIndexed;

  @override
  Map<Reference<Unit>, Unit> get _unitsIndexed =>
      ___unitsIndexed ??= super._unitsIndexed;

  @override
  Map<Reference<Upgrade>, Upgrade> get _upgradesIndexed =>
      ___upgradesIndexed ??= super._upgradesIndexed;

  @override
  Catalog rebuild(void Function(CatalogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogBuilder toBuilder() => new CatalogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Catalog &&
        commandCards == other.commandCards &&
        units == other.units &&
        upgrades == other.upgrades &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, commandCards.hashCode), units.hashCode),
            upgrades.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Catalog')
          ..add('commandCards', commandCards)
          ..add('units', units)
          ..add('upgrades', upgrades)
          ..add('version', version))
        .toString();
  }
}

class CatalogBuilder implements Builder<Catalog, CatalogBuilder> {
  _$Catalog _$v;

  ListBuilder<CommandCard> _commandCards;
  ListBuilder<CommandCard> get commandCards =>
      _$this._commandCards ??= new ListBuilder<CommandCard>();
  set commandCards(ListBuilder<CommandCard> commandCards) =>
      _$this._commandCards = commandCards;

  ListBuilder<Unit> _units;
  ListBuilder<Unit> get units => _$this._units ??= new ListBuilder<Unit>();
  set units(ListBuilder<Unit> units) => _$this._units = units;

  ListBuilder<Upgrade> _upgrades;
  ListBuilder<Upgrade> get upgrades =>
      _$this._upgrades ??= new ListBuilder<Upgrade>();
  set upgrades(ListBuilder<Upgrade> upgrades) => _$this._upgrades = upgrades;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  CatalogBuilder();

  CatalogBuilder get _$this {
    if (_$v != null) {
      _commandCards = _$v.commandCards?.toBuilder();
      _units = _$v.units?.toBuilder();
      _upgrades = _$v.upgrades?.toBuilder();
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Catalog other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Catalog;
  }

  @override
  void update(void Function(CatalogBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Catalog build() {
    _$Catalog _$result;
    try {
      _$result = _$v ??
          new _$Catalog._(
              commandCards: commandCards.build(),
              units: units.build(),
              upgrades: upgrades.build(),
              version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commandCards';
        commandCards.build();
        _$failedField = 'units';
        units.build();
        _$failedField = 'upgrades';
        upgrades.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Catalog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
