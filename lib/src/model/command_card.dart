import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as meta;

import 'faction.dart';
import 'reference.dart';
import 'unit.dart';
import 'wave.dart';
import 'weapon.dart';

part 'command_card.g.dart';

/// Represents a collection of units (a list) as an army.
abstract class CommandCard extends Object
    with Indexable<CommandCard>
    implements Built<CommandCard, CommandCardBuilder>, Reference<CommandCard> {
  /// Support for serializing instances of [CommandCard].
  static Serializer<CommandCard> get serializer => _$commandCardSerializer;

  factory CommandCard({
    @meta.required String id,
    @meta.required String name,
    @meta.required int pips,
    @meta.required String activated,
    String text = '',
    Faction faction,
    List<Unit> required = const [],
    @meta.required List<Wave> waves,
    Weapon weapon,
  }) {
    if (faction == null) {
      if (required.isEmpty) {
        faction = Faction.neutral;
      } else {
        faction = required.first.faction;
      }
    }
    return CommandCard._build(
      (b) => b
        ..id = id
        ..name = name
        ..pips = pips
        ..activated = activated
        ..text = text.trim()
        ..faction = faction
        ..required.addAll(required.map((u) => u.toRef()))
        ..waves.addAll(waves)
        ..weapon = weapon?.toBuilder(),
    );
  }

  factory CommandCard._build(
    void Function(CommandCardBuilder) build,
  ) = _$CommandCard;

  CommandCard._();

  /// ID of the [CommandCard].
  @override
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
  @BuiltValueField(compare: false, wireName: 'activated')
  String get activated;

  /// Faction required to use this command card.
  ///
  /// May be [Faction.neutral] in order to be used by any faction.
  @BuiltValueField(compare: false, wireName: 'faction')
  Faction get faction;

  /// Unit(s) required to use this command card.
  @BuiltValueField(compare: false, wireName: 'required')
  BuiltSet<Reference<Unit>> get required;

  /// Wave(s) this command card is in.
  @BuiltValueField(compare: false)
  BuiltList<Wave> get waves;

  /// Whether this command card is in a released wave.
  bool get isReleased => waves.any((w) => w.isReleased);

  /// Weapon attached to this command card.
  @BuiltValueField(compare: false)
  @nullable
  Weapon get weapon;
}
