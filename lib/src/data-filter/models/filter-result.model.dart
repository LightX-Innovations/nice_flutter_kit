import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

part "filter-result.model.freezed.dart";
part "filter-result.model.g.dart";

@freezed
@JsonSerializable(genericArgumentFactories: true)
class NiceFilterResultModel<T extends FreezedClass> with _$NiceFilterResultModel<T> implements FreezedClass {
  int? get nextPage => page.number * page.size + values.length < total ? page.number + 1 : null;

  const factory NiceFilterResultModel({
    required NiceFilterResultPageModel page,
    required int total,
    required List<T> values,
    List<int>? subscriptionIds,
  }) = _NiceFilterResultModel<T>;

  const NiceFilterResultModel._();

  factory NiceFilterResultModel.fromJson(Map<String, dynamic> json) {
    return _$NiceFilterResultModelFromJson<T>(
      json,
      (jsonT) => NiceConfig.serializationConfig.deserialize<T>(jsonT as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$NiceFilterResultModelToJson<T>(this, (value) => value.toJson());
  }
}
