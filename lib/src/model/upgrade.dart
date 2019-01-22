import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'faction.dart';
import 'keyword.dart';
import 'reference.dart';
import 'unit.dart';
import 'unit_type.dart';
import 'upgrade_slot.dart';
import 'weapon.dart';

part 'upgrade.g.dart';

/// Represents an upgrade card.
@BuiltValue()
abstract class Upgrade extends Object
    with Indexable<Upgrade>
    implements Built<Upgrade, UpgradeBuilder>, Reference<Upgrade> {
  /// Support for serializing instances of [Upgrade].
  static Serializer<Upgrade> get serializer => _$upgradeSerializer;

  factory Upgrade({
    bool addsMiniature = false,
    bool isExhaustible = false,
    @required int points,
    Map<UnitKeyword, Object> keywordsForUnit = const {},
    Map<UpgradeKeyword, Object> keywords = const {},
    Faction restrictedToFaction,
    List<Reference<Unit>> restrictedToUnit = const [],
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
        ..keywordsForUnit.addAll(keywordsForUnit)
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

  /// Keywords on the upgrade itself.
  @BuiltValueField(compare: false)
  BuiltMap<UpgradeKeyword, Object> get keywords;

  /// Keywords on the upgrade granted to the unit.
  @BuiltValueField(compare: false, wireName: 'keywords_for_unit')
  BuiltMap<UnitKeyword, Object> get keywordsForUnit;

  /// Faction this upgrade is restricted to.
  ///
  /// May be `null` if this upgrade is neutral.
  @BuiltValueField(compare: false, wireName: 'restricted_to_faction')
  @nullable
  Faction get restrictedToFaction;

  /// Units this upgrade is restricted to.
  @BuiltValueField(compare: false, wireName: 'restricted_to_unit')
  BuiltSet<Reference<Unit>> get restrictedToUnit;

  /// Unit type this upgrade is restricted to.
  ///
  /// May be `null` if this upgrade may be applied on any unit.
  @nullable
  @BuiltValueField(compare: false, wireName: 'restricted_to_type')
  UnitType get restrictedToType;

  /// Returns whether [unit] is able to use this upgrade.
  ///
  /// **NOTE**: This is only a simple check of the various restrictions and the
  /// type of this upgrade, and does not encapsulate game logic such as
  /// uniqueness, available slots, point costs, or any extra rules.
  bool isUsableBy(Unit unit) {
    if (!unit.upgrades.containsKey(type)) {
      return false;
    }
    if (restrictedToFaction != null && restrictedToFaction != unit.faction) {
      return false;
    }
    if (restrictedToType != null && restrictedToType != unit.type) {
      return false;
    }
    return restrictedToUnit.isEmpty || restrictedToUnit.contains(unit.toRef());
  }

  /// Unique ID for the upgrade.
  @override
  String get id;

  /// Name of the upgrade card.
  @BuiltValueField(compare: false, wireName: 'name')
  String get name;

  /// Text of the upgrade card.
  @BuiltValueField(compare: false, wireName: 'text')
  String get text;

  /// Type of the upgrade.
  @BuiltValueField(compare: false, wireName: 'type')
  UpgradeSlot get type;

  /// Weapon supplied to unit when the upgrade is used.
  ///
  /// May be `null` if this upgrade does not provide an weapon.
  @nullable
  @BuiltValueField(compare: false, wireName: 'weapon')
  Weapon get weapon;
}
