import 'package:dio/dio.dart';
import 'package:nice_flutter_kit/api/base.api.dart';
import 'package:nice_flutter_kit/configs/api.config.dart';
import 'package:nice_flutter_kit/data-filter/models/filter-result.model.dart';
import 'package:nice_flutter_kit/data-filter/models/filter.model.dart';

abstract class NiceDataFilterApi<T> extends NiceBaseApi {
  final Dio dio;

  const NiceDataFilterApi(
    String path, {
    NiceApiConfig? overrideConfig,
    required this.dio,
  }) : super(
          path,
          overrideConfig: overrideConfig,
        );

  Future<NiceFilterResultModel<T>> filter(NiceFilterModel filter) async {
    final res = await dio.post(url("filter"), data: filter.toJson());
    return NiceFilterResultModel.fromJson(res.data);
  }
}