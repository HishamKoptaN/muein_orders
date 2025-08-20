import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoggingInterceptor extends Interceptor {
  //! onRequest
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    log(
      'Request[${options.method}] => PATH: ${options.path}',
    );
    super.onRequest(options, handler);
  }

  //! onRequest
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    log(
      'Response[${response.statusCode}]: ${response.data}',
    );
    super.onResponse(
      response,
      handler,
    );
  }

  //! onError
  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    log(
      'Error[${err.response?.statusCode}]: ${err.message}',
    );
    super.onError(err, handler);
  }
}
