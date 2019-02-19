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
import 'wave.dart';
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
    Map<UpgradeSlot, int> addsUpgradeSlots = const {},
    bool isExhaustible = false,
    @required int points,
    Map<UnitKeyword, Object> keywordsForUnit = const {},
    Map<UpgradeKeyword, Object> keywords = const {},
    Faction restrictedToFaction,
    ForceAlignment restrictedToForceAlignment,
    List<Reference<Unit>> restrictedToUnit = const [],
    UnitType restrictedToType,
    @required String id,
    @required String name,
    String text = '',
    @required UpgradeSlot type,
    @required List<Wave> waves,
    Weapon weapon,
  }) {
    return Upgrade._builder(
      (b) => b
        ..addsMiniature = addsMiniature
        ..addsUpgradeSlots.addAll(addsUpgradeSlots)
        ..isExhaustible = isExhaustible
        ..points = points
        ..keywordsForUnit.addAll(keywordsForUnit)
        ..keywords.addAll(keywords)
        ..restrictedToFaction = restrictedToFaction
        ..restrictedToForceAlignment = restrictedToForceAlignment
        ..restrictedToUnit.addAll(restrictedToUnit)
        ..restrictedToType = restrictedToType
        ..id = id
        ..name = name
        ..text = text.trim()
        ..type = type
        ..waves.addAll(waves)
        ..weapon = weapon?.toBuilder(),
    );
  }

  factory Upgrade._builder(void Function(UpgradeBuilder) build) = _$Upgrade;
  Upgrade._();

  /// Whether this upgrade adds a miniature.
  @BuiltValueField(compare: false, wireName: 'adds_miniature')
  bool get addsMiniature;

  /// Upgrade slots that are added as a result of this upgrade.
  @BuiltValueField(compare: false, wireName: 'adds_upgrade_slots')
  BuiltMap<UpgradeSlot, int> get addsUpgradeSlots;

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

  /// Force alignment this upgrade is restricted to.
  ///
  /// May be `null` if this upgrade is neutral.
  @BuiltValueField(compare: false, wireName: 'restricted_to_force_alignment')
  @nullable
  ForceAlignment get restrictedToForceAlignment;

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
  bool isUsableBy(Unit unit) =>
      unit.upgrades.containsKey(type) &&
      _nullOrEqual(restrictedToFaction, unit.faction) &&
      _nullOrEqual(restrictedToForceAlignment, unit.forceAlignment) &&
      _nullOrEqual(restrictedToType, unit.type) &&
      (restrictedToUnit.isEmpty || restrictedToUnit.contains(unit.toRef()));

  static bool _nullOrEqual(Object a, Object b) {
    return a == null || a == b;
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

  /// Wave(s) of the upgrade's release.
  @BuiltValueField(compare: false)
  BuiltList<Wave> get waves;

  /// Whether this upgrade is considered released.
  bool get isReleased => waves.any((w) => w.isReleased);
}
