import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'faction.g.dart';

/// Represents possible factions in the game.
class Faction extends EnumClass {
  /// Rebels.
  @BuiltValueEnumConst(wireName: 'rebels')
  static const Faction rebels = _$rebelAlliance;

  /// Imperials.
  @BuiltValueEnumConst(wireName: 'imperials')
  static const Faction imperials = _$galacticEmpire;

  const Faction._(String name) : super(name);

  @override
  String get name => _$FactionSerializer._toWire[super.name];

  /// Support for serializing instances of [Faction].
  static Serializer<Faction> get serializer => _$factionSerializer;

  /// All known values of [Faction].
  static BuiltSet<Faction> get values => _$valuesFaction;

  /// Parses and returns [name] into the cooresponding [Faction] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static Faction from(String name) {
    return _$valueOfFaction(_$FactionSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "Faction.from" instead.')
  static Faction valueOf(String name) => _$valueOfFaction(name);
}

/// Represents possible force alignments in the game.
class ForceAlignment extends EnumClass {
  /// Light Side.
  @BuiltValueEnumConst(wireName: 'light')
  static const ForceAlignment light = _$light;

  /// Dark Side.
  @BuiltValueEnumConst(wireName: 'dark')
  static const ForceAlignment dark = _$dark;

  const ForceAlignment._(String name) : super(name);

  @override
  String get name => _$ForceAlignmentSerializer._toWire[super.name];

  /// Support for serializing instances of [ForceAlignment].
  static Serializer<ForceAlignment> get serializer =>
      _$forceAlignmentSerializer;

  /// All known values of [ForceAlignment].
  static BuiltSet<ForceAlignment> get values => _$valuesForceAlignment;

  /// Parses and returns [name] into the cooresponding [ForceAlignment] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static ForceAlignment from(String name) {
    return _$valueOfForceAlignment(_$ForceAlignmentSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "ForceAlignment.from" instead.')
  static ForceAlignment valueOf(String name) => _$valueOfForceAlignment(name);
}
