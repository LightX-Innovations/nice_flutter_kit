import "package:dio/dio.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

abstract class NiceDataFilterApi<T extends FreezedClass> extends NiceBaseApi {
  const NiceDataFilterApi({
    required String path,
    required Dio dio,
    NiceApiConfig? overrideConfig,
  }) : super(
          path: path,
          dio: dio,
          overrideConfig: overrideConfig,
        );

  Future<NiceFilterResultModel<T>> filter(NiceFilterModel filter) async {
    final res = await dio.post(url("filter"), data: filter.toJson());
    return NiceFilterResultModel<T>.fromJson(res.data);
  }

  Future<int> filterCount(NiceFilterModel filter) async {
    final res = await dio.post(url("filter-count"), data: filter.toJson());
    return int.parse(res.data);
  }
}
