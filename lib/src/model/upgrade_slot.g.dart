// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

const UpgradeSlot _$heavyWeapon = const UpgradeSlot._('heavyWeapon');
const UpgradeSlot _$personnel = const UpgradeSlot._('personnel');
const UpgradeSlot _$force = const UpgradeSlot._('force');
const UpgradeSlot _$command = const UpgradeSlot._('command');
const UpgradeSlot _$gear = const UpgradeSlot._('gear');
const UpgradeSlot _$grenades = const UpgradeSlot._('grenades');
const UpgradeSlot _$hardPoint = const UpgradeSlot._('hardPoint');
const UpgradeSlot _$comms = const UpgradeSlot._('comms');
const UpgradeSlot _$pilot = const UpgradeSlot._('pilot');
const UpgradeSlot _$elite = const UpgradeSlot._('elite');
const UpgradeSlot _$generator = const UpgradeSlot._('generator');

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
    case 'elite':
      return _$elite;
    case 'generator':
      return _$generator;
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
  _$elite,
  _$generator,
]);

Serializer<UpgradeSlot> _$upgradeSlotSerializer = new _$UpgradeSlotSerializer();

class _$UpgradeSlotSerializer implements PrimitiveSerializer<UpgradeSlot> {
  static const Map<String, String> _toWire = const <String, String>{
    'heavyWeapon': 'HEAVY_WEAPON',
    'personnel': 'PERSONNEL',
    'force': 'FORCE',
    'command': 'COMMAND',
    'gear': 'GEAR',
    'grenades': 'GRENADES',
    'hardPoint': 'HARD_POINT',
    'comms': 'COMMS',
    'pilot': 'PILOT',
    'elite': 'ELITE',
    'generator': 'GENERATOR',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'HEAVY_WEAPON': 'heavyWeapon',
    'PERSONNEL': 'personnel',
    'FORCE': 'force',
    'COMMAND': 'command',
    'GEAR': 'gear',
    'GRENADES': 'grenades',
    'HARD_POINT': 'hardPoint',
    'COMMS': 'comms',
    'PILOT': 'pilot',
    'ELITE': 'elite',
    'GENERATOR': 'generator',
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
