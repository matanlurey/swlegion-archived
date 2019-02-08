import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/swlegion.dart';

part 'attack_pool.g.dart';

abstract class AttackPool implements Built<AttackPool, AttackPoolBuilder> {
  static Serializer<AttackPool> get serializer => _$attackPoolSerializer;

  factory AttackPool(void Function(AttackPoolBuilder) _) = _$AttackPool;

  factory AttackPool.of({
    int aimTokens = 0,
    AttackSurge surge,
    @required Map<AttackDice, int> dice,
    Map<AttackDice, int> spray = const {},
    bool highVelocity = false,
    int sharpshooter = 0,
    int impact = 0,
    int pierce = 0,
    int diceToReroll = 2,
    bool blast = false,
    bool melee = false,
  }) {
    return AttackPool(
      (b) => b
        ..aimTokens = aimTokens
        ..surge = surge
        ..dice.addAll(dice)
        ..spray.addAll(spray)
        ..highVelocity = highVelocity
        ..sharpshooter = sharpshooter
        ..impact = impact
        ..pierce = pierce
        ..diceToReroll = diceToReroll
        ..blast = blast
        ..melee = melee,
    );
  }

  AttackPool._();

  /// Aim tokens available.
  @BuiltValueField(wireName: 'aim_tokens')
  int get aimTokens;

  /// How to treat [AttackDiceSide.surge].
  @nullable
  AttackSurge get surge;

  /// Attacking dice pool.
  BuiltMap<AttackDice, int> get dice;

  /// Attacking dice that are dependent on [WeaponKeyword.kSpray].
  BuiltMap<AttackDice, int> get spray;

  /// Whether [WeaponKeyword.kHighVelocity] is in the attack pool.
  @BuiltValueField(wireName: 'high_velocity')
  bool get highVelocity;

  /// [WeaponKeyword.kPierce] in the attack pool.
  int get pierce;

  /// How many dice should be re-rolled when [aimTokens] are used.
  ///
  /// This should account for [UnitKeyword.kPrecise] and similar rules.
  int get diceToReroll;

  /// [WeaponKeyword.kImpact] in the attack pool.
  int get impact;

  /// [UnitKeyword.kSharpshooter] in the attack pool.
  int get sharpshooter;

  /// Whether [WeaponKeyword.kBlast] is in the attack pool.
  bool get blast;

  /// Whether this is a melee attack.
  bool get melee;

  /// Returns [dice] (and [spray]) flattenned to a list of [totalDice].
  List<AttackDice> flattenDice({int targets}) {
    final results = dice.entries.fold<List<AttackDice>>([], (p, d) {
      return p..addAll(Iterable.generate(d.value, (_) => d.key));
    }).toList();
    if (targets != null && spray.isNotEmpty) {
      results.addAll(spray.entries.fold<List<AttackDice>>([], (p, d) {
        return p..addAll(Iterable.generate(targets * d.value, (_) => d.key));
      }));
    }
    return results;
  }

  /// Total dice (of any color) being thrown.
  int get totalDice => dice.values.fold(0, (a, b) => a + b);
}
