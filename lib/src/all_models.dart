import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

// Import self in order to use in the metadata annotation.
import 'all_models.dart';

export 'model/army.dart' show Army, ArmyBuilder;
export 'model/army_unit.dart' show ArmyUnit, ArmyUnitBuilder;
export 'model/attack_dice.dart' show AttackDice, AttackDiceSide;
export 'model/attack_surge.dart' show AttackSurge;
export 'model/defense_dice.dart' show DefenseDice, DefenseDiceSide;
export 'model/faction.dart' show Faction;
export 'model/keyword.dart' show Keyword;
export 'model/rank.dart' show Rank;
export 'model/unit.dart' show Unit, UnitKey;
export 'model/unit_type.dart' show UnitType;
export 'model/upgrade.dart' show Upgrade, UpgradeKey;
export 'model/upgrade_slot.dart' show UpgradeSlot;
export 'model/weapon.dart' show Weapon;

part 'all_models.g.dart';

/// A [Serializers] for the models provided by this package.
@SerializersFor([
  Army,
  ArmyUnit,
  AttackDice,
  AttackSurge,
  DefenseDice,
  Faction,
  Keyword,
  Rank,
  UnitType,
  Unit,
  UnitKey,
  Upgrade,
  UpgradeKey,
  UpgradeSlot,
  Weapon,
])
final Serializers serializers = _$serializers;
