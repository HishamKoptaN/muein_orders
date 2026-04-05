import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../database/shared_pref_helper.dart';
import '../database/shared_pref_keys.dart';
import '../errors/api_error_model/api_error_model.dart';

@singleton
class AuthInterceptor extends Interceptor {
  final TokenStorage tokenStorage;
  String? _currentToken;
  AuthInterceptor(this.tokenStorage);
  Future<void> updateToken() async {
    _currentToken = await tokenStorage.getToken();
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await tokenStorage.getToken();
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
  //! onRequest

  //! onRequest

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response != null &&
        response.data != null &&
        response.data is Map<String, dynamic>) {
      try {
        final errorModel = ApiErrorModel.fromJson(response.data);
        final finalErrorModel = errorModel.copyWith(
          statusCode: response.statusCode,
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

@lazySingleton
class TokenStorage {
  Future<String?> getToken() async {
    return await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.jwtToken,
    );
  }
}
