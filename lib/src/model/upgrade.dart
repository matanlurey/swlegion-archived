import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'faction.dart';
import 'keyword.dart';
import 'unit.dart';
import 'unit_type.dart';
import 'upgrade_slot.dart';
import 'weapon.dart';

part 'upgrade.g.dart';

/// Represents an upgrade card.
@BuiltValue()
abstract class Upgrade implements Built<Upgrade, UpgradeBuilder> {
  /// Support for serializing instances of [Upgrade].
  static Serializer<Upgrade> get serializer => _$upgradeSerializer;

  factory Upgrade({
    bool addsMiniature = false,
    bool isExhaustible = false,
    @required int points,
    Map<Keyword, String> keywords = const {},
    Faction restrictedToFaction,
    List<Unit> restrictedToUnit = const [],
    UnitType restrictedToType,
    @required String id,
    @required String name,
    String text = '',
    @required UpgradeSlot type,
    Weapon weapon,
  }) =>
      Upgrade._builder((b) => b
        ..addsMiniature = addsMiniature
        ..isExhaustible = isExhaustible
        ..points = points
        ..keywords.addAll(keywords)
        ..restrictedToFaction = restrictedToFaction
        ..restrictedToUnit.addAll(restrictedToUnit)
        ..restrictedToType = restrictedToType
        ..id = id
        ..name = name
        ..text = text
        ..type = type
        ..weapon = weapon?.toBuilder());

  factory Upgrade._builder(void Function(UpgradeBuilder) build) = _$Upgrade;
  Upgrade._();

  /// Whether this upgrade adds a miniature.
  @BuiltValueField(compare: false, wireName: 'adds_miniature')
  bool get addsMiniature;

  /// Whether this upgrade is exhausted upon use.
  @BuiltValueField(compare: false, wireName: 'is_exhaustible')
  bool get isExhaustible;

  /// Cost of the upgrade.
  @BuiltValueField(compare: false, wireName: 'points')
  int get points;

  /// Keywords on the upgrade, normally granted to the unit.
  @BuiltValueField(compare: false, wireName: 'keywords')
  BuiltMap<Keyword, String> get keywords;

  /// Faction this upgrade is restricted to.
  ///
  /// May be `null` if this upgrade is neutral.
  @BuiltValueField(compare: false, wireName: 'restricted_to_faction')
  @nullable
  Faction get restrictedToFaction;

  /// Units this upgrade is restricted to.
  @BuiltValueField(compare: false, wireName: 'restricted_to_unit')
  BuiltSet<Unit> get restrictedToUnit;

  /// Unit type this upgrade is restricted to.
  ///
  /// May be `null` if this upgrade may be applied on any unit.
  @nullable
  @BuiltValueField(wireName: 'restricted_to_type')
  UnitType get restrictedToType;

  /// Unique ID for the upgrade.
  String get id;

  /// Name of the upgrade card.
  @BuiltValueField(compare: false, wireName: 'name')
  String get name;

  /// Text of the upgrade card.
  @BuiltValueField(compare: false, wireName: 'text')
  String get text;

  /// Type of the upgrade.
  @BuiltValueField(wireName: 'type')
  UpgradeSlot get type;

  /// Weapon supplied to unit when the upgrade is used.
  ///
  /// May be `null` if this upgrade does not provide an weapon.
  @nullable
  @BuiltValueField(wireName: 'weapon')
  Weapon get weapon;

  /// Returns a [UpgradeKey] reference for this [Upgrade].
  UpgradeKey toKey() => UpgradeKey(id: id, name: name);
}

/// Represents a reference to a [Upgrade] based on [id].
abstract class UpgradeKey implements Built<UpgradeKey, UpgradeKeyBuilder> {
  /// Support for serializing instances of [UpgradeKey].
  static Serializer<UpgradeKey> get serializer => _$upgradeKeySerializer;

  factory UpgradeKey({
    @required String id,
    @required String name,
  }) =>
      UpgradeKey._build((b) => b
        ..id = id
        ..name = name);

  factory UpgradeKey._build(void Function(UpgradeKeyBuilder) b) = _$UpgradeKey;
  UpgradeKey._();

  /// [Unit.id].
  String get id;

  /// Name of the upgrade.
  @BuiltValueField(compare: false)
  String get name;
}
