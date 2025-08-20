// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _DocsApi implements DocsApi {
  _DocsApi(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'api/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<DocsResModel?> getClientDocs({required int clientId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<DocsResModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/docs/${clientId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>?>(_options);
    late DocsResModel? _value;
    try {
      _value =
          _result.data == null ? null : DocsResModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Doc> createDoc({
    required int orderId,
    required File videoOne,
    required File videoTwo,
    required File imageOne,
    required File imageTwo,
    required String longitude,
    required String latitude,
    required void Function(int, int)? onSendProgress,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('order_id', orderId.toString()));
    _data.files.add(
      MapEntry(
        'video_one',
        MultipartFile.fromFileSync(
          videoOne.path,
          filename: videoOne.path.split(Platform.pathSeparator).last,
        ),
      ),
    );
    _data.files.add(
      MapEntry(
        'video_two',
        MultipartFile.fromFileSync(
          videoTwo.path,
          filename: videoTwo.path.split(Platform.pathSeparator).last,
        ),
      ),
    );
    _data.files.add(
      MapEntry(
        'image_one',
        MultipartFile.fromFileSync(
          imageOne.path,
          filename: imageOne.path.split(Platform.pathSeparator).last,
        ),
      ),
    );
    _data.files.add(
      MapEntry(
        'image_two',
        MultipartFile.fromFileSync(
          imageTwo.path,
          filename: imageTwo.path.split(Platform.pathSeparator).last,
        ),
      ),
    );
    _data.fields.add(MapEntry('longitude', longitude));
    _data.fields.add(MapEntry('latitude', latitude));
    final _options = _setStreamType<Doc>(
      Options(
        method: 'POST',
        headers: _headers,
        extra: _extra,
        contentType: 'multipart/form-data',
      )
          .compose(
            _dio.options,
            'docs',
            queryParameters: queryParameters,
            data: _data,
            onSendProgress: onSendProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Doc _value;
    try {
      _value = Doc.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
