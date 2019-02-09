// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpgradeSlot _$heavyWeapon = const UpgradeSlot._('heavyWeapon');
const UpgradeSlot _$personnel = const UpgradeSlot._('personnel');
const UpgradeSlot _$force = const UpgradeSlot._('force');
const UpgradeSlot _$command = const UpgradeSlot._('command');
const UpgradeSlot _$gear = const UpgradeSlot._('gear');
const UpgradeSlot _$grenades = const UpgradeSlot._('grenades');
const UpgradeSlot _$hardPoint = const UpgradeSlot._('hardPoint');
const UpgradeSlot _$comms = const UpgradeSlot._('comms');
const UpgradeSlot _$pilot = const UpgradeSlot._('pilot');
const UpgradeSlot _$training = const UpgradeSlot._('training');
const UpgradeSlot _$generator = const UpgradeSlot._('generator');
const UpgradeSlot _$blaster = const UpgradeSlot._('blaster');

UpgradeSlot _$valueOf(String name) {
  switch (name) {
    case 'heavyWeapon':
      return _$heavyWeapon;
    case 'personnel':
      return _$personnel;
    case 'force':
      return _$force;
    case 'command':
      return _$command;
    case 'gear':
      return _$gear;
    case 'grenades':
      return _$grenades;
    case 'hardPoint':
      return _$hardPoint;
    case 'comms':
      return _$comms;
    case 'pilot':
      return _$pilot;
    case 'training':
      return _$training;
    case 'generator':
      return _$generator;
    case 'blaster':
      return _$blaster;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpgradeSlot> _$values =
    new BuiltSet<UpgradeSlot>(const <UpgradeSlot>[
  _$heavyWeapon,
  _$personnel,
  _$force,
  _$command,
  _$gear,
  _$grenades,
  _$hardPoint,
  _$comms,
  _$pilot,
  _$training,
  _$generator,
  _$blaster,
]);

Serializer<UpgradeSlot> _$upgradeSlotSerializer = new _$UpgradeSlotSerializer();

class _$UpgradeSlotSerializer implements PrimitiveSerializer<UpgradeSlot> {
  static const Map<String, String> _toWire = const <String, String>{
    'heavyWeapon': 'heavy-weapon',
    'personnel': 'personnel',
    'force': 'force',
    'command': 'command',
    'gear': 'gear',
    'grenades': 'grenades',
    'hardPoint': 'hard-point',
    'comms': 'comms',
    'pilot': 'pilot',
    'training': 'training',
    'generator': 'generator',
    'blaster': 'blaster',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'heavy-weapon': 'heavyWeapon',
    'personnel': 'personnel',
    'force': 'force',
    'command': 'command',
    'gear': 'gear',
    'grenades': 'grenades',
    'hard-point': 'hardPoint',
    'comms': 'comms',
    'pilot': 'pilot',
    'training': 'training',
    'generator': 'generator',
    'blaster': 'blaster',
  };

  @override
  final Iterable<Type> types = const <Type>[UpgradeSlot];
  @override
  final String wireName = 'UpgradeSlot';

  @override
  Object serialize(Serializers serializers, UpgradeSlot object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpgradeSlot deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpgradeSlot.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
