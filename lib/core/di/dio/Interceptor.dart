import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../utils/services/auth_storage_service.dart';

@singleton
class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await AuthStorageService.getJwtToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
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
/*

@singleton
class AuthInterceptor extends Interceptor {
  final AuthStorageService authStorageService;
  AuthInterceptor(this.authStorageService);
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await AuthStorageService.getJwtToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      super.onRequest(options, handler);
    } catch (e) {
      super.onRequest(options, handler);
    }
  }
}
@singleton
class LoggingInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response != null &&
        response.data != null &&
        response.data is Map<String, dynamic>) {
      try {
        final finalErrorModel = ErrorInfo(
          message: response.data['message'],
          data: response.data,
        );
        final customError = err.copyWith(
          message: finalErrorModel.message,
          error: finalErrorModel,
        );
        return handler.next(customError);
      } on Exception catch (e) {
        log('Error parsing custom error message: $e');
      }
    }
    return handler.next(err);
  }
}

*/