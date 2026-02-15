import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../config/env.dart';
import '../../../config/envs/dev_env.dart';
import '../../../config/envs/prod_env.dart';
import '../../database/shared_pref_helper.dart';
import '../../database/shared_pref_keys.dart';

@module
abstract class ApiModule {
  @singleton
  Env get config {
    const env = String.fromEnvironment('FLUTTER_ENV', defaultValue: 'dev');
    if (env == 'prod') {
      return ProdEnv();
    }
    return DevEnv();
  }
}

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
    final token = await tokenStorage.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}

@singleton
class LoggingInterceptor extends Interceptor {
  //! onRequest
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Request[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  //! onRequest
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('Response[${response.statusCode}]: ${response.data}');
    super.onResponse(response, handler);
  }

  //! onError
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Error[${err.response?.statusCode}]: ${err.message}');
    super.onError(err, handler);
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
