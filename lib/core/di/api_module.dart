import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:storage_utils/storage_utils.dart';

import '../database/cache/shared_pref_keys.dart';
import '../networking/api_constants.dart';
import 'dependency_injection.dart';

@module
abstract class ApiModule {
  @singleton
  Dio dio(
    AuthInterceptor authInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(
          seconds: 30,
        ),
        receiveTimeout: const Duration(
          seconds: 30,
        ),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.addAll(
      [
        authInterceptor,
        LogInterceptor(
          responseBody: true,
        ),
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,
        ),
      ],
    );
    return dio;
  }
}

@singleton
class AuthInterceptor extends Interceptor {
  final TokenStorage tokenStorage;
  AuthInterceptor(
    this.tokenStorage,
  );
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await tokenStorage.getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      super.onRequest(
        options,
        handler,
      );
    } catch (e) {
      super.onRequest(
        options,
        handler,
      );
    }
  }
}

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

@lazySingleton
class TokenStorage {
  Future<String?> getToken() async {
    final secure = getIt<SecureStorageService>();
    return await secure.getString(SharedPrefKeys.userToken);
  }
}
