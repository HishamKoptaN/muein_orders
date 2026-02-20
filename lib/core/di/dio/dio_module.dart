import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../config/env_config.dart';
import '../../networking/slow_upload_interceptor.dart';
import 'api_module.dart';

@module
abstract class DioModule {
  //! default dio
  @singleton
  Dio dio(
    AuthInterceptor authInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.config.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.addAll([
      authInterceptor,
      authInterceptor,
      LogInterceptor(responseBody: true),
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    ]);
    if (kDebugMode) {
      dio.interceptors.add(
        SlowUploadInterceptor(bytesPerSecond: 64, chunkSize: 1024),
      );
    }
    return dio;
  }

  //! auth dio
  @singleton
  @Named('authDio')
  Dio authDio(
    AuthInterceptor authInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        baseUrl: EnvConfig.config.authBaseUrl,
      ),
    );
    dio.interceptors.addAll([
      authInterceptor,
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    ]);
    return dio;
  }

  //! s3 dio
  @singleton
  @Named('s3Dio')
  Dio s3Dio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(days: 1),
      ),
    );
    dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: false,
        responseBody: true,
        error: true,
        compact: true,
      ),
    ]);
    return dio;
  }
}
