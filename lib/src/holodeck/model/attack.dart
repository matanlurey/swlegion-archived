import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:swlegion/src/all_models.dart';

part 'attack.g.dart';

/// Result of rolling an attack dice pool.
abstract class Attack implements Built<Attack, AttackBuilder> {
  static Serializer<Attack> get serializer => _$attackSerializer;

  factory Attack({
    Iterable<AttackDice> hits = const [],
    Iterable<AttackDice> crits = const [],
    Iterable<AttackDice> blanks = const [],
  }) {
    return Attack._build(
      (b) => b..hits.addAll(hits)..crits.addAll(crits)..blanks.addAll(blanks),
    );
  }

  factory Attack._build(void Function(AttackBuilder) _) = _$Attack;
  Attack._();

  /// Number of hits (but not [crits]) after surge is converted.
  BuiltList<AttackDice> get hits;

  /// Number of crits (critical hits) after surge is converted.
  BuiltList<AttackDice> get crits;

  /// Number of blank sides (misses) after surge is converted.
  BuiltList<AttackDice> get blanks;

  /// Total successful (non-[blanks]) hits.
  int get totalHits => hits.length + crits.length;
}
