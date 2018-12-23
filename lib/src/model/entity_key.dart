import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'entity_key.g.dart';

/// Represents a reference to another entity based on [id].
abstract class EntityKey implements Built<EntityKey, EntityKeyBuilder> {
  /// Support for serializing instances of [EntityKey].
  static Serializer<EntityKey> get serializer => _$entityKeySerializer;

  factory EntityKey({
    @required String id,
    @required String name,
  }) =>
      EntityKey._build((b) => b
        ..id = id
        ..name = name);

  factory EntityKey._build(void Function(EntityKeyBuilder) b) = _$EntityKey;

  EntityKey._();

  /// Reference to another ID.
  String get id;

  /// Reference to another name.
  @BuiltValueField(compare: false)
  String get name;
}
