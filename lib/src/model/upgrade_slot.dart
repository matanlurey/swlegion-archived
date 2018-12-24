import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upgrade_slot.g.dart';

/// Represents available upgrade slots of a unit.
class UpgradeSlot extends EnumClass {
  @BuiltValueEnumConst(wireName: 'heavy-weapon')
  static const UpgradeSlot heavyWeapon = _$heavyWeapon;

  @BuiltValueEnumConst(wireName: 'personnel')
  static const UpgradeSlot personnel = _$personnel;

  @BuiltValueEnumConst(wireName: 'force')
  static const UpgradeSlot force = _$force;

  @BuiltValueEnumConst(wireName: 'command')
  static const UpgradeSlot command = _$command;

  @BuiltValueEnumConst(wireName: 'gear')
  static const UpgradeSlot gear = _$gear;

  @BuiltValueEnumConst(wireName: 'grenades')
  static const UpgradeSlot grenades = _$grenades;

  @BuiltValueEnumConst(wireName: 'hard-point')
  static const UpgradeSlot hardPoint = _$hardPoint;

  @BuiltValueEnumConst(wireName: 'comms')
  static const UpgradeSlot comms = _$comms;

  @BuiltValueEnumConst(wireName: 'pilot')
  static const UpgradeSlot pilot = _$pilot;

  @BuiltValueEnumConst(wireName: 'elite')
  static const UpgradeSlot elite = _$elite;

  @BuiltValueEnumConst(wireName: 'generator')
  static const UpgradeSlot generator = _$generator;

  const UpgradeSlot._(String name) : super(name);

  @override
  String get name => _$UpgradeSlotSerializer._toWire[super.name];

  /// Support for serializing instances of [UpgradeSlot].
  static Serializer<UpgradeSlot> get serializer => _$upgradeSlotSerializer;

  /// All known values of [UpgradeSlot].
  static BuiltSet<UpgradeSlot> get values => _$values;

  /// Parses and returns [name] into the cooresponding [UpgradeSlot] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static UpgradeSlot from(String name) {
    return _$valueOf(_$UpgradeSlotSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "UpgradeSlot.from" instead.')
  static UpgradeSlot valueOf(String name) => _$valueOf(name);
}
