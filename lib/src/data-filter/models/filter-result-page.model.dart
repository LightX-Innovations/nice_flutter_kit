import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

part "filter-result-page.model.freezed.dart";
part "filter-result-page.model.g.dart";

@freezed
class NiceFilterResultPageModel with _$NiceFilterResultPageModel implements FreezedClass {
  const factory NiceFilterResultPageModel({
    required int number,
    required int size,
  }) = _NiceFilterResultPageModel;

  const NiceFilterResultPageModel._();

  factory NiceFilterResultPageModel.fromJson(Map<String, dynamic> json) => _$NiceFilterResultPageModelFromJson(json);
}
