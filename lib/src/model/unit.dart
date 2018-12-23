import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'attack_surge.dart';
import 'defense_dice.dart';
import 'entity_key.dart';
import 'faction.dart';
import 'keyword.dart';
import 'rank.dart';
import 'unit_type.dart';
import 'upgrade_slot.dart';
import 'weapon.dart';

part 'unit.g.dart';

/// Represents a unit card.
abstract class Unit implements Built<Unit, UnitBuilder> {
  /// Support for serializing instances of [Unit].
  static Serializer<Unit> get serializer => _$unitSerializer;

  /// Create a new [Unit] with the defined characteristics.
  factory Unit({
    @required String name,
    @required String id,
    bool isUnique = false,
    String subTitle,
    @required Faction faction,
    @required UnitType type,
    @required int points,
    @required Rank rank,
    @required int miniatures,
    @required int wounds,
    int courage,
    int resilience,
    @required DefenseDice defense,
    AttackSurge attackSurge,
    bool hasDefenseSurge = false,
    @required int speed,
    Map<UpgradeSlot, int> upgrades = const {},
    List<Weapon> weapons = const [],
    Map<Keyword, String> keywords = const {},
  }) =>
      Unit._builder((b) => b
        ..id = id
        ..name = name
        ..isUnique = isUnique
        ..subTitle = subTitle
        ..faction = faction
        ..type = type
        ..points = points
        ..rank = rank
        ..miniatures = miniatures
        ..wounds = wounds
        ..courage = courage
        ..resilience = resilience
        ..defense = defense
        ..attackSurge = attackSurge
        ..hasDefenseSurge = hasDefenseSurge
        ..speed = speed
        ..upgrades.addAll(upgrades)
        ..weapons.addAll(weapons)
        ..keywords.addAll(keywords));

  Unit._();

  // Disallow building directly.
  //
  // There is not a use case for incrementally building a unit since custom
  // units do not exist in the game (all the data is pre-known and is either
  // defined directly or deserialized via JSON).
  factory Unit._builder(void Function(UnitBuilder) build) = _$Unit;

  /// Unique ID for the unit.
  String get id;

  /// Name of the unit.
  @BuiltValueField(compare: false)
  String get name;

  /// Whether this is a _unique_ unit (one per army).
  @BuiltValueField(compare: false, wireName: 'is_unique')
  bool get isUnique;

  /// An optional _sub-title_ for the unit.
  ///
  /// If omitted (`null`), then the unit does not have one.
  @BuiltValueField(compare: false, wireName: 'sub_title')
  @nullable
  String get subTitle;

  /// Faction the unit belongs to.
  @BuiltValueField(compare: false)
  Faction get faction;

  /// Type of the unit.
  @BuiltValueField(compare: false)
  UnitType get type;

  /// Amount of points the unit costs to bring into an army list.
  @BuiltValueField(compare: false)
  int get points;

  /// Rank of the unit when building an army list.
  @BuiltValueField(compare: false)
  Rank get rank;

  /// Number of miniatures that come with the unit.
  @BuiltValueField(compare: false)
  int get miniatures;

  /// Amount of damage that can be inflicted on this unit.
  @BuiltValueField(compare: false)
  int get wounds;

  /// Courage of the unit (for troopers).
  ///
  /// If omitted (`null`), this unit is immune to the effects of suppression.
  @BuiltValueField(compare: false)
  @nullable
  int get courage;

  /// Resilience of the unit (for vehicles).
  ///
  /// If omitted (`null`), this unit is immune to the effects of vehicle damage.
  @BuiltValueField(compare: false)
  @nullable
  int get resilience;

  /// Dice to be rolled to prevent damage.
  @BuiltValueField(compare: false)
  DefenseDice get defense;

  /// How the _surge_ icon converts for _attacks_.
  ///
  /// If omitted (`null`), it does not convert.
  @BuiltValueField(compare: false, wireName: 'attack_surge')
  @nullable
  AttackSurge get attackSurge;

  /// Whether the _surge_ icon converts for _defence_.
  @BuiltValueField(compare: false, wireName: 'has_defense_surge')
  bool get hasDefenseSurge;

  /// Speed of the unit when moving.
  @BuiltValueField(compare: false)
  int get speed;

  /// Available slots for upgrades for this unit.
  @BuiltValueField(compare: false, wireName: 'upgrades')
  BuiltMap<UpgradeSlot, int> get upgrades;

  /// Weapons included with this unit.
  @BuiltValueField(compare: false)
  BuiltSet<Weapon> get weapons;

  /// Keywords on the unit.
  @BuiltValueField(compare: false)
  BuiltMap<Keyword, String> get keywords;

  /// Returns a [EntityKey] reference for this [Unit].
  EntityKey toKey() => EntityKey(id: id, name: name);
}
