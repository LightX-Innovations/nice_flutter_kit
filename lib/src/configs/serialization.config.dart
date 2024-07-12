import "package:collection/collection.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

class JsonAdapter<T> {
  final T Function(Map<String, dynamic> json)? deserializer;
  final Map<String, dynamic> Function(T value)? serializer;

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

  bool isVoid<T>() => T == NiceVoid;

  bool canDeserialize<T>() => adapters[T]?.deserializer != null;
  bool canSerialize<T>() => adapters[T]?.serializer != null;
  bool enumHasValues<T>() => enumValues[T]?.isNotEmpty ?? false;

  T deserialize<T>(Map<String, dynamic> json) {
    if (isVoid<T>()) {
      return const NiceVoid() as T;
    }

    if (!canDeserialize<T>()) {
      throw "Unimplemented deserializer function for type ${T.toString()}";
    }

    return adapters[T]!.deserializer!(json);
  }

  List<T> deserializeList<T>(List<Map<String, dynamic>> json) {
    if (isVoid<T>()) {
      return List<T>.filled(json.length, const NiceVoid() as T);
    }

    return json.map((it) => deserialize<T>(it)).toList();
  }

  Map<String, dynamic> serialize<T>(T value) {
    if (isVoid<T>()) {
      return const {};
    }

    if (!canSerialize<T>()) {
      throw "Unimplemented serializer function for type ${T.toString()}";
    }

    return adapters[T]!.serializer!(value);
  }

  List<Map<String, dynamic>> serializeList<T>(List<T> values) {
    if (isVoid<T>()) {
      return List<Map<String, dynamic>>.filled(values.length, const {});
    }

    return values.map((it) => serialize<T>(it)).toList();
  }

  List<T> getEnumValues<T>() {
    if (!enumHasValues<T>()) {
      throw "No enum values found for type ${T.toString()}";
    }

    return enumValues[T]!.cast<T>();
  }

  static String? inputToJson(NiceEnum? it) => it?.value;
  static T? inputFromJson<T extends NiceEnum>(String? value) =>
      NiceConfig.serializationConfig.getEnumValues<T>().firstWhereOrNull((it) => it.value == value);
}
