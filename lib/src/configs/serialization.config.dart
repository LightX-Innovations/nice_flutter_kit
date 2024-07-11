import "package:collection/collection.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

class JsonAdapter {
  final dynamic Function(Map<String, dynamic>)? deserializer;
  final dynamic Function(dynamic)? serializer;

  const JsonAdapter({
    required this.deserializer,
    required this.serializer,
  });
}

class NiceSerializationConfig {
  final Map<Type, JsonAdapter> adapters;
  final Map<Type, List<NiceEnum>> enumValues;

  const NiceSerializationConfig({
    this.adapters = const {},
    this.enumValues = const {},
  });

  bool canDeserialize<T>() => adapters[T]?.deserializer != null;
  bool canSerialize<T>() => adapters[T]?.serializer != null;
  bool enumHasValues<T>() => enumValues[T]?.isNotEmpty ?? false;

  T deserialize<T>(Map<String, dynamic> json) {
    if (!canDeserialize<T>()) {
      throw "Unimplemented deserializer function for type ${T.toString()}";
    }

    return adapters[T]!.deserializer!(json);
  }

  Map<String, dynamic> serialize<T>(T value) {
    if (!canSerialize<T>()) {
      throw "Unimplemented serializer function for type ${T.toString()}";
    }

    return adapters[T]!.serializer!(value);
  }

  List<T> getEnumValues<T>() {
    if (!enumHasValues<T>()) {
      throw "No enum values found for type ${T.toString()}";
    }

    return enumValues[T]!.cast<T>();
  }

  static String? inputToJson(NiceEnum? it) => it?.value;
  static NiceEnum? inputFromJson<T extends NiceEnum>(String? value) =>
      NiceConfig.serializationConfig
          .getEnumValues<T>()
          .firstWhereOrNull((it) => it.value == value);
}

class NiceEnumJsonKey<T extends NiceEnum> extends JsonKey {
  const NiceEnumJsonKey({
    final Object? defaultValue,
    final bool? disallowNullValue,
    final Function? fromJson,
    final bool? ignore,
    final bool? includeFromJson,
    final bool? includeIfNull,
    final bool? includeToJson,
    final String? name,
    final Object? Function(Map p1, String p2)? readValue,
    final bool? required,
    final Function? toJson,
    final Enum? unknownEnumValue,
  }) : super(
          defaultValue: defaultValue,
          disallowNullValue: disallowNullValue,
          fromJson: fromJson ?? NiceSerializationConfig.inputFromJson<T>,
          ignore: ignore,
          includeFromJson: includeFromJson,
          includeIfNull: includeIfNull,
          includeToJson: includeToJson,
          name: name,
          readValue: readValue,
          required: required,
          toJson: toJson ?? NiceSerializationConfig.inputToJson,
          unknownEnumValue: unknownEnumValue,
        );
}
