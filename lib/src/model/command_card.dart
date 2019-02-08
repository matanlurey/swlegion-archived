import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'faction.dart';
import 'reference.dart';
import 'unit.dart';
import 'weapon.dart';

part 'command_card.g.dart';

/// Represents a collection of units (a list) as an army.
abstract class CommandCard extends Object
    with Indexable<CommandCard>
    implements Built<CommandCard, CommandCardBuilder>, Reference<CommandCard> {
  /// Support for serializing instances of [CommandCard].
  static Serializer<CommandCard> get serializer => _$commandCardSerializer;

  factory CommandCard({
    @required String id,
    @required String name,
    @required int pips,
    @required String unitsActivated,
    String text = '',
    Faction factionRequired,
    List<Unit> unitsRequired = const [],
    Weapon weapon,
  }) =>
      CommandCard._build((b) => b
        ..id = id
        ..name = name
        ..pips = pips
        ..unitsActivated = unitsActivated
        ..text = text
        ..factionRequired = factionRequired
        ..unitsRequired.addAll(unitsRequired.map((u) => u.toRef()))
        ..weapon = weapon?.toBuilder());

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
  String get unitsActivated;

  /// Faction required to use this command card.
  ///
  /// If `null`, but [unitsRequired] is non-empty, this is implicit to the unit.
  @BuiltValueField(compare: false, wireName: 'faction_required')
  @nullable
  Faction get factionRequired;

  /// Unit(s) required to use this command card.
  @BuiltValueField(compare: false, wireName: 'units_required')
  BuiltSet<Reference<Unit>> get unitsRequired;

  /// Weapon attached to this command card.
  @BuiltValueField(compare: false)
  @nullable
  Weapon get weapon;
}
