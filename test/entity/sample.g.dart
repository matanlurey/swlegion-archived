// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Sample> _$sampleSerializer = new _$SampleSerializer();

class _$SampleSerializer implements StructuredSerializer<Sample> {
  @override
  final Iterable<Type> types = const [Sample, _$Sample];
  @override
  final String wireName = 'Sample';

  @override
  Iterable serialize(Serializers serializers, Sample object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.aCommand != null) {
      result
        ..add('aCommand')
        ..add(serializers.serialize(object.aCommand,
            specifiedType: const FullType(
                Reference, const [const FullType(CommandCard)])));
    }
    if (object.aUnit != null) {
      result
        ..add('aUnit')
        ..add(serializers.serialize(object.aUnit,
            specifiedType:
                const FullType(Reference, const [const FullType(Unit)])));
    }
    if (object.aUpgrade != null) {
      result
        ..add('aUpgrade')
        ..add(serializers.serialize(object.aUpgrade,
            specifiedType:
                const FullType(Reference, const [const FullType(Upgrade)])));
    }
    if (object.commands != null) {
      result
        ..add('commands')
        ..add(serializers.serialize(object.commands,
            specifiedType: const FullType(BuiltSet, const [
              const FullType(Reference, const [const FullType(CommandCard)])
            ])));
    }
    if (object.units != null) {
      result
        ..add('units')
        ..add(serializers.serialize(object.units,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Reference, const [const FullType(Unit)])
            ])));
    }
    if (object.upgrades != null) {
      result
        ..add('upgrades')
        ..add(serializers.serialize(object.upgrades,
            specifiedType: const FullType(BuiltSet, const [
              const FullType(Reference, const [const FullType(Upgrade)])
            ])));
    }
    if (object.keywords != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(object.keywords,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(UnitKeyword),
              const FullType(JsonObject)
            ])));
    }

    return result;
  }

  @override
  Sample deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SampleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aCommand':
          result.aCommand = serializers.deserialize(value,
                  specifiedType: const FullType(
                      Reference, const [const FullType(CommandCard)]))
              as Reference<CommandCard>;
          break;
        case 'aUnit':
          result.aUnit = serializers.deserialize(value,
                  specifiedType:
                      const FullType(Reference, const [const FullType(Unit)]))
              as Reference<Unit>;
          break;
        case 'aUpgrade':
          result.aUpgrade = serializers.deserialize(value,
                  specifiedType: const FullType(
                      Reference, const [const FullType(Upgrade)]))
              as Reference<Upgrade>;
          break;
        case 'commands':
          result.commands.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltSet, const [
                const FullType(Reference, const [const FullType(CommandCard)])
              ])) as BuiltSet);
          break;
        case 'units':
          result.units.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Reference, const [const FullType(Unit)])
              ])) as BuiltList);
          break;
        case 'upgrades':
          result.upgrades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltSet, const [
                const FullType(Reference, const [const FullType(Upgrade)])
              ])) as BuiltSet);
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UnitKeyword),
                const FullType(JsonObject)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$Sample extends Sample {
  @override
  final Reference<CommandCard> aCommand;
  @override
  final Reference<Unit> aUnit;
  @override
  final Reference<Upgrade> aUpgrade;
  @override
  final BuiltSet<Reference<CommandCard>> commands;
  @override
  final BuiltList<Reference<Unit>> units;
  @override
  final BuiltSet<Reference<Upgrade>> upgrades;
  @override
  final BuiltMap<UnitKeyword, JsonObject> keywords;

  factory _$Sample([void updates(SampleBuilder b)]) =>
      (new SampleBuilder()..update(updates)).build();

  _$Sample._(
      {this.aCommand,
      this.aUnit,
      this.aUpgrade,
      this.commands,
      this.units,
      this.upgrades,
      this.keywords})
      : super._();

  @override
  Sample rebuild(void updates(SampleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleBuilder toBuilder() => new SampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sample &&
        aCommand == other.aCommand &&
        aUnit == other.aUnit &&
        aUpgrade == other.aUpgrade &&
        commands == other.commands &&
        units == other.units &&
        upgrades == other.upgrades &&
        keywords == other.keywords;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, aCommand.hashCode), aUnit.hashCode),
                        aUpgrade.hashCode),
                    commands.hashCode),
                units.hashCode),
            upgrades.hashCode),
        keywords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sample')
          ..add('aCommand', aCommand)
          ..add('aUnit', aUnit)
          ..add('aUpgrade', aUpgrade)
          ..add('commands', commands)
          ..add('units', units)
          ..add('upgrades', upgrades)
          ..add('keywords', keywords))
        .toString();
  }
}

class SampleBuilder implements Builder<Sample, SampleBuilder> {
  _$Sample _$v;

  Reference<CommandCard> _aCommand;
  Reference<CommandCard> get aCommand => _$this._aCommand;
  set aCommand(Reference<CommandCard> aCommand) => _$this._aCommand = aCommand;

  Reference<Unit> _aUnit;
  Reference<Unit> get aUnit => _$this._aUnit;
  set aUnit(Reference<Unit> aUnit) => _$this._aUnit = aUnit;

  Reference<Upgrade> _aUpgrade;
  Reference<Upgrade> get aUpgrade => _$this._aUpgrade;
  set aUpgrade(Reference<Upgrade> aUpgrade) => _$this._aUpgrade = aUpgrade;

  SetBuilder<Reference<CommandCard>> _commands;
  SetBuilder<Reference<CommandCard>> get commands =>
      _$this._commands ??= new SetBuilder<Reference<CommandCard>>();
  set commands(SetBuilder<Reference<CommandCard>> commands) =>
      _$this._commands = commands;

  ListBuilder<Reference<Unit>> _units;
  ListBuilder<Reference<Unit>> get units =>
      _$this._units ??= new ListBuilder<Reference<Unit>>();
  set units(ListBuilder<Reference<Unit>> units) => _$this._units = units;

  SetBuilder<Reference<Upgrade>> _upgrades;
  SetBuilder<Reference<Upgrade>> get upgrades =>
      _$this._upgrades ??= new SetBuilder<Reference<Upgrade>>();
  set upgrades(SetBuilder<Reference<Upgrade>> upgrades) =>
      _$this._upgrades = upgrades;

  MapBuilder<UnitKeyword, JsonObject> _keywords;
  MapBuilder<UnitKeyword, JsonObject> get keywords =>
      _$this._keywords ??= new MapBuilder<UnitKeyword, JsonObject>();
  set keywords(MapBuilder<UnitKeyword, JsonObject> keywords) =>
      _$this._keywords = keywords;

  SampleBuilder();

  SampleBuilder get _$this {
    if (_$v != null) {
      _aCommand = _$v.aCommand;
      _aUnit = _$v.aUnit;
      _aUpgrade = _$v.aUpgrade;
      _commands = _$v.commands?.toBuilder();
      _units = _$v.units?.toBuilder();
      _upgrades = _$v.upgrades?.toBuilder();
      _keywords = _$v.keywords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sample other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sample;
  }

  @override
  void update(void updates(SampleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Sample build() {
    _$Sample _$result;
    try {
      _$result = _$v ??
          new _$Sample._(
              aCommand: aCommand,
              aUnit: aUnit,
              aUpgrade: aUpgrade,
              commands: _commands?.build(),
              units: _units?.build(),
              upgrades: _upgrades?.build(),
              keywords: _keywords?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commands';
        _commands?.build();
        _$failedField = 'units';
        _units?.build();
        _$failedField = 'upgrades';
        _upgrades?.build();
        _$failedField = 'keywords';
        _keywords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Sample', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
