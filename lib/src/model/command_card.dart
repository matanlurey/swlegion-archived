import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'unit.dart';
import 'weapon.dart';

part 'command_card.g.dart';

/// Represents a collection of units (a list) as an army.
abstract class CommandCard implements Built<CommandCard, CommandCardBuilder> {
  /// Support for serializing instances of [CommandCard].
  static Serializer<CommandCard> get serializer => _$commandCardSerializer;

  factory CommandCard({
    @required String id,
    @required String name,
    @required int pips,
    @required String unitsActivated,
    String text = '',
    List<Unit> unitsRequired = const [],
    Weapon weapon,
  }) =>
      CommandCard._build((b) => b
        ..id = id
        ..name = name
        ..pips = pips
        ..unitsActivated = unitsActivated
        ..text = text
        ..unitsRequired.addAll(unitsRequired)
        ..weapon = weapon?.toBuilder());

  factory CommandCard._build(void Function(CommandCardBuilder) build) =
      _$CommandCard;
  CommandCard._();

  /// ID of the [CommandCard].
  String get id;

  /// Name of the [CommandCard].
  @BuiltValueField(compare: false)
  String get name;

  /// Text of the [CommandCard].
  @BuiltValueField(compare: false)
  String get text;

  /// Pips on the [CommandCard].
  @BuiltValueField(compare: false)
  int get pips;

  /// Unit(s) activated as a result of this card.
  @BuiltValueField(compare: false)
  String get unitsActivated;

  /// Unit(s) required to use this command card.
  @BuiltValueField(compare: false)
  BuiltSet<Unit> get unitsRequired;

  /// Weapon attached to this command card.
  @BuiltValueField(compare: false)
  @nullable
  Weapon get weapon;
}

/// Represents a reference to a [CommandCard] based on [id].
abstract class CommandCardKey
    implements Built<CommandCardKey, CommandCardKeyBuilder> {
  /// Support for serializing instances of [CommandCardKey].
  static Serializer<CommandCardKey> get serializer =>
      _$commandCardKeySerializer;

  factory CommandCardKey({
    @required String id,
    @required String name,
  }) =>
      CommandCardKey._build((b) => b
        ..id = id
        ..name = name);

  factory CommandCardKey._build(void Function(CommandCardKeyBuilder) b) =
      _$CommandCardKey;
  CommandCardKey._();

  /// [CommandCard.id].
  String get id;

  /// Name of the command card.
  @BuiltValueField(compare: false)
  String get name;

  /// Returns a [CommandCardKey] reference for this [CommandCard].
  CommandCardKey toKey() => CommandCardKey(id: id, name: name);
}
