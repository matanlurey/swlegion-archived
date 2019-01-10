import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'attack_dice.dart';
import 'attack_surge.dart';
import 'keyword.dart';

part 'weapon.g.dart';

/// Represents a weapon and its characteristics.
abstract class Weapon implements Built<Weapon, WeaponBuilder> {
  /// Support for serializing instances of [Weapon].
  static Serializer<Weapon> get serializer => _$weaponSerializer;

  /// Create a new [Weapon] instance with the provided characteristics.
  factory Weapon({
    @required String name,
    @required Map<AttackDice, int> dice,
    @required int minRange,
    int maxRange,
    int areaOfEffect = 0,
    Map<Keyword, String> keywords = const {},
    AttackSurge surgeOverride,
  }) =>
      Weapon._build((b) => b
        ..name = name
        ..areaOfEffect = areaOfEffect
        ..dice.addAll(dice)
        ..minRange = minRange
        ..maxRange = maxRange
        ..keywords.addAll(keywords)
        ..surgeOverride = surgeOverride);

  factory Weapon.melee({
    @required String name,
    @required Map<AttackDice, int> dice,
    Map<Keyword, String> keywords = const {},
  }) =>
      Weapon(
        name: name,
        dice: dice,
        minRange: 0,
        maxRange: 0,
        keywords: keywords,
      );

  Weapon._();

  // Disallow building directly.
  //
  // There is not a use case for incrementally building a weapon since custom
  // weapons do not exist in the game (all the data is pre-known and is either
  // defined directly or deserialized via JSON).
  factory Weapon._build(void Function(WeaponBuilder) b) = _$Weapon;

  /// Name of the weapon.
  String get name;

  /// Attack dice for the weapon.
  BuiltMap<AttackDice, int> get dice;

  /// Whether this weapon triggers an AOE radius.
  ///
  /// A range of `0` is considered non-AEO.
  @BuiltValueField(wireName: 'area_of_effect')
  int get areaOfEffect;

  /// Minimum range of the weapon.
  ///
  /// A range of `0` is considered melee range.
  @BuiltValueField(wireName: 'min_range')
  int get minRange;

  /// Maximum range of the weapon.
  ///
  /// If omitted (`null`), the maximum range is _unlimited_.
  @BuiltValueField(wireName: 'max_range')
  @nullable
  int get maxRange;

  /// Keywords on the weapon.
  BuiltMap<Keyword, String> get keywords;

  /// Returns a new weapon as-if [amount] of these weapons are being used.
  Weapon scale(int amount) {
    assert(amount > 1);
    return rebuild((u) {
      dice.forEach((type, dice) {
        u.dice[type] = dice * amount;
      });
    });
  }

  @BuiltValueField(wireName: 'surge_override')
  @nullable
  AttackSurge get surgeOverride;
}
