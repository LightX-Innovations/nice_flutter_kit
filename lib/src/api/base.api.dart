import "package:dio/dio.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

abstract class NiceBaseApi {
  final NiceApiConfig? overrideConfig;
  final String path;
  final Dio dio;

  const NiceBaseApi({
    required this.path,
    required this.dio,
    this.overrideConfig,
  });

  String get _apiUrl {
    assert(
      NiceConfig.defaultApiConfig != null || overrideConfig != null,
      "NiceApi wasn't initialized, please provide NiceApiConfig in main",
    );
    return overrideConfig?.url ?? NiceConfig.defaultApiConfig!.url;
  }

  String url([String? route]) {
    return route != null ? "$_apiUrl/$path/$route" : "$_apiUrl/$path";
  }

  String prefixedUrl(String prefix, [String? route]) {
    return route != null ? "$_apiUrl/$prefix/$path/$route" : "$_apiUrl/$prefix/$path";
  }

  /// Convenience method to make an HTTP GET request.
  Future<ResponseType> get<ResponseType extends FreezedClass>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP GET request.
  Future<List<ResponseType>> getList<ResponseType extends FreezedClass>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP GET request with [Uri].
  Future<ResponseType> getUri<ResponseType extends FreezedClass>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.getUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP GET request with [Uri].
  Future<List<ResponseType>> getUriList<ResponseType extends FreezedClass>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.getUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP POST request.
  Future<ResponseType> post<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.post(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP POST request.
  Future<List<ResponseType>> postList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.post(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP POST request with [Uri].
  Future<ResponseType> postUri<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.postUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP POST request with [Uri].
  Future<List<ResponseType>> postUriList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.postUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PUT request.
  Future<ResponseType> put<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.put(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PUT request.
  Future<List<ResponseType>> putList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.put(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PUT request with [Uri].
  Future<ResponseType> putUri<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.putUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PUT request with [Uri].
  Future<List<ResponseType>> putUriList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.putUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PATCH request.
  Future<ResponseType> patch<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.patch(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PATCH request.
  Future<List<ResponseType>> patchList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    String path, {
    DtoType? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.patch(
      path,
      data: data?.toJson(),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PATCH request with [Uri].
  Future<ResponseType> patchUri<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.patchUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserialize<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP PATCH request with [Uri].
  Future<List<ResponseType>> patchUriList<ResponseType extends FreezedClass, DtoType extends NiceDto>(
    Uri uri, {
    DtoType? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await dio.patchUri(
      uri,
      data: data?.toJson(),
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return NiceConfig.serializationConfig.deserializeList<ResponseType>(response.data);
  }

  /// Convenience method to make an HTTP DELETE request.
  Future<Response<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// Convenience method to make an HTTP DELETE request with [Uri].
  Future<Response<T>> deleteUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return dio.deleteUri<T>(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// {@template dio.Dio.download}
  /// Download the file and save it in local. The default http method is "GET",
  /// you can custom it by [Options.method].
  ///
  /// [urlPath] is the file url.
  ///
  /// The file will be saved to the path specified by [savePath].
  /// The following two types are accepted:
  /// 1. `String`: A path, eg "xs.jpg"
  /// 2. `FutureOr<String> Function(Headers headers)`, for example:
  ///    ```dart
  ///    await dio.download(
  ///      url,
  ///      (Headers headers) {
  ///        // Extra info: redirect counts
  ///        print(headers.value('redirects'));
  ///        // Extra info: real uri
  ///        print(headers.value('uri'));
  ///        // ...
  ///        return (await getTemporaryDirectory()).path + 'file_name';
  ///      },
  ///    );
  ///    ```
  ///
  /// [onReceiveProgress] is the callback to listen downloading progress.
  /// Please refer to [ProgressCallback].
  ///
  /// [deleteOnError] whether delete the file when error occurs.
  /// The default value is [true].
  ///
  /// [lengthHeader] : The real size of original file (not compressed).
  /// When file is compressed:
  /// 1. If this value is 'content-length', the `total` argument of
  ///    [onReceiveProgress] will be -1.
  /// 2. If this value is not 'content-length', maybe a custom header indicates
  ///    the original file size, the `total` argument of [onReceiveProgress]
  ///    will be this header value.
  ///
  /// You can also disable the compression by specifying the 'accept-encoding'
  /// header value as '*' to assure the value of `total` argument of
  /// [onReceiveProgress] is not -1. For example:
  ///
  /// ```dart
  /// await dio.download(
  ///   url,
  ///   (await getTemporaryDirectory()).path + 'flutter.svg',
  ///   options: Options(
  ///     headers: {HttpHeaders.acceptEncodingHeader: '*'}, // Disable gzip
  ///   ),
  ///   onReceiveProgress: (received, total) {
  ///     if (total <= 0) return;
  ///     print('percentage: ${(received / total * 100).toStringAsFixed(0)}%');
  ///   },
  /// );
  /// ```
  /// {@endtemplate}
  Future<Response> download(
    String urlPath,
    dynamic savePath, {
    ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  }) {
    return dio.download(
      urlPath,
      savePath,
      onReceiveProgress: onReceiveProgress,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      deleteOnError: deleteOnError,
      lengthHeader: lengthHeader,
      data: data,
      options: options,
    );
  }

  /// {@macro dio.Dio.download}
  Future<Response> downloadUri(
    Uri uri,
    dynamic savePath, {
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  }) {
    return dio.downloadUri(
      uri,
      savePath,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
      deleteOnError: deleteOnError,
      lengthHeader: lengthHeader,
      data: data,
      options: options,
    );
  }
}
