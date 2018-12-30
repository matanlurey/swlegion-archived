import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:swlegion/swlegion.dart';

part 'sample.g.dart';

abstract class Sample implements Built<Sample, SampleBuilder> {
  static Serializer<Sample> get serializer => _$sampleSerializer;

  factory Sample(void Function(SampleBuilder) b) = _$Sample;
  Sample._();

  /// A single [CommandCard].
  @nullable
  Reference<CommandCard> get aCommand;

  /// A single [Unit].
  @nullable
  Reference<Unit> get aUnit;

  /// A single [Upgrade].
  @nullable
  Reference<Upgrade> get aUpgrade;

  /// Example of cards by reference.
  @nullable
  BuiltSet<Reference<CommandCard>> get commands;

  /// Example of units by reference.
  @nullable
  BuiltList<Reference<Unit>> get units;

  /// Examples of upgrades by reference.
  @nullable
  BuiltSet<Reference<Upgrade>> get upgrades;
}
