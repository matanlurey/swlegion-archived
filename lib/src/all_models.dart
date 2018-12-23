import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

// Import self in order to use in the metadata annotation.
import 'all_models.dart';

export 'model/attack_dice.dart' show AttackDice, AttackDiceSide;
export 'model/attack_surge.dart' show AttackSurge;
export 'model/command_card.dart' show CommandCard;
export 'model/defense_dice.dart' show DefenseDice, DefenseDiceSide;
export 'model/entity_key.dart' show EntityKey;
export 'model/faction.dart' show Faction;
export 'model/keyword.dart' show Keyword;
export 'model/rank.dart' show Rank;
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
  EntityKey,
  Faction,
  Keyword,
  Rank,
  UnitType,
  Unit,
  Upgrade,
  UpgradeSlot,
  Weapon,
])
final Serializers serializers = _$serializers;
