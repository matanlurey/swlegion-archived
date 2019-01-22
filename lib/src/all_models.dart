import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:meta/meta.dart';

// Import self in order to use in the metadata annotation.
import 'all_models.dart';
import 'model/reference.dart';

export 'model/attack_dice.dart' show AttackDice, AttackDiceSide;
export 'model/attack_surge.dart' show AttackSurge;
export 'model/catalog.dart' show Catalog;
export 'model/command_card.dart' show CommandCard;
export 'model/defense_dice.dart' show DefenseDice, DefenseDiceSide;
export 'model/faction.dart' show Faction;
export 'model/keyword.dart' show UnitKeyword, UpgradeKeyword, WeaponKeyword;
export 'model/rank.dart' show Rank;
export 'model/reference.dart' show Indexable, Reference;
export 'model/unit.dart' show Unit;
export 'model/unit_type.dart' show UnitType;
export 'model/upgrade.dart' show Upgrade;
export 'model/upgrade_slot.dart' show UpgradeSlot;
export 'model/weapon.dart' show Weapon;

part 'all_models.g.dart';

/// A custom implementation of [StandardJsonPlugin] for the models here.
///
/// Includes models in this package. Additionla may be specified.
class CustomJsonPlugin extends StandardJsonPlugin {
  static List<Type> _concat(Iterable<Type> a, Iterable<Type> b) {
    return a.toList() + b.toList();
  }

  final Set<Type> _enumsUsedAsMapKeys;
  final Set<Type> _enumsExternalToBuiltValue;

  factory CustomJsonPlugin({
    Iterable<Type> enumsUsedAsMapKeys = const [],
    Iterable<Type> enumsExternalToBuiltValue = const [],
  }) {
    return CustomJsonPlugin._(
      enumsUsedAsMapKeys: _concat(
        enumsUsedAsMapKeys,
        const [
          AttackDice,
          DefenseDice,
          UnitKeyword,
          UpgradeKeyword,
          UpgradeSlot,
          WeaponKeyword,
        ],
      ),
      enumsExternalToBuiltValue: _concat(
        enumsExternalToBuiltValue,
        const [
          UnitKeyword,
          UpgradeKeyword,
          WeaponKeyword,
        ],
      ),
    );
  }

  CustomJsonPlugin._({
    @required Iterable<Type> enumsUsedAsMapKeys,
    @required Iterable<Type> enumsExternalToBuiltValue,
  })  : _enumsUsedAsMapKeys = enumsUsedAsMapKeys.toSet(),
        _enumsExternalToBuiltValue = enumsExternalToBuiltValue.toSet();

  @override
  Object beforeDeserialize(object, type) {
    if (type.root == BuiltMap && type.parameters.isNotEmpty) {
      final key = type.parameters.first.root;
      if (_enumsUsedAsMapKeys.contains(type.parameters.first.root)) {
        object = _addEnumEncoding(
          object as Map<String, Object>,
          encodeValue: _enumsExternalToBuiltValue.contains(key),
        );
      }
    }
    return super.beforeDeserialize(object, type);
  }

  Map<String, Object> _addEnumEncoding(
    Map<String, Object> json, {
    @required bool encodeValue,
  }) {
    return json.map((key, value) {
      return MapEntry(
        '"$key"',
        encodeValue
            ? {
                valueKey: value,
                discriminator: '${value.runtimeType}',
              }
            : value,
      );
    });
  }

  @override
  Object afterSerialize(object, type) {
    var json = super.afterSerialize(object, type);
    if (type.root == BuiltMap && type.parameters.isNotEmpty) {
      if (_enumsUsedAsMapKeys.contains(type.parameters.first.root)) {
        json = _removeEnumEncoding(json as Map<String, Object>);
      }
    }
    return json;
  }

  Map<String, Object> _removeEnumEncoding(Map<String, Object> json) {
    return json.map((key, value) {
      var valOut = value;
      if (key is String && key.startsWith('"')) {
        key = key.substring(1, key.length - 1);
      }
      if (value is Map && value.containsKey(discriminator)) {
        valOut = value[valueKey];
      }
      return MapEntry(key, valOut);
    });
  }
}

/// A [Serializers] for the models provided by this package.
@SerializersFor([
  AttackDice,
  AttackSurge,
  Catalog,
  CommandCard,
  DefenseDice,
  Faction,
  Rank,
  UnitType,
  Unit,
  Upgrade,
  UpgradeSlot,
  Weapon,
])
final Serializers serializers = () {
  final builder = _$serializers.toBuilder()
    ..addPlugin(_CustomEnumJsonPlugin(
      enumsUsedAsMapKeys: const [
        AttackDice,
        DefenseDice,
        UnitKeyword,
        UpgradeKeyword,
        UpgradeSlot,
        WeaponKeyword,
      ],
      enumsExternalToBuiltValue: const [
        UnitKeyword,
        UpgradeKeyword,
        WeaponKeyword,
      ],
    ))
    ..add(Reference.serializer)
    ..add(UnitKeyword.serializer)
    ..add(UpgradeKeyword.serializer)
    ..add(WeaponKeyword.serializer);

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
