import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

// Import self in order to use in the metadata annotation.
import 'all_models.dart';
import 'model/reference.dart';

export 'model/attack_dice.dart' show AttackDice, AttackDiceSide;
export 'model/attack_surge.dart' show AttackSurge;
export 'model/command_card.dart' show CommandCard;
export 'model/defense_dice.dart' show DefenseDice, DefenseDiceSide;
export 'model/faction.dart' show Faction;
export 'model/keyword.dart' show Keyword;
export 'model/rank.dart' show Rank;
export 'model/reference.dart' show Indexable, Reference;
export 'model/unit.dart' show Unit;
export 'model/unit_type.dart' show UnitType;
export 'model/upgrade.dart' show Upgrade;
export 'model/upgrade_slot.dart' show UpgradeSlot;
export 'model/weapon.dart' show Weapon;

part 'all_models.g.dart';

/// A [Serializers] for the models provided by this package.
@SerializersFor([
  AttackDice,
  AttackSurge,
  CommandCard,
  DefenseDice,
  Faction,
  Keyword,
  Rank,
  UnitType,
  Unit,
  Upgrade,
  UpgradeSlot,
  Weapon,
])
final Serializers serializers = () {
  final builder = _$serializers.toBuilder()..add(Reference.serializer);

  // Manually add Reference<CommandCard|Unit|Upgrade>.
  // https://github.com/google/built_value.dart/issues/124
  // ignore: cascade_invocations
  builder
    ..addBuilderFactory(
      const FullType(BuiltSet, [
        FullType(Reference, [FullType(CommandCard)])
      ]),
      () => SetBuilder<Reference<CommandCard>>(),
    )
    ..addBuilderFactory(
      const FullType(BuiltList, [
        FullType(Reference, [FullType(Unit)]),
      ]),
      () => ListBuilder<Reference<Unit>>(),
    )
    ..addBuilderFactory(
      const FullType(BuiltSet, [
        FullType(Reference, [FullType(Upgrade)]),
      ]),
      () => SetBuilder<Reference<Upgrade>>(),
    );

  return builder.build();
}();
