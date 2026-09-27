import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../utils/database/shared_pref_helper.dart';
import '../../utils/database/shared_pref_keys.dart';

@singleton
class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.jwtToken,
    );
    options.headers['Authorization'] = 'Bearer $token';
    return handler.next(options);
  }
}

@singleton
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Request[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('Response[${response.statusCode}]: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Error[${err.response?.statusCode}]: ${err.message}');
    super.onError(err, handler);
  }
}
