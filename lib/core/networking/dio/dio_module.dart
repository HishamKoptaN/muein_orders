import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../config/env_config.dart';
import 'Interceptor.dart';
import 'dio_factory.dart';

@module
abstract class DioModule {
  @singleton
  Dio userDio() {
    return DioFactory.create(
      baseUrl: EnvConfig.config.userBaseUrl,
      interceptors: [AuthInterceptor()],
    );
  }

  @singleton
  @Named('authDio')
  Dio authDio() {
    return DioFactory.create(
      baseUrl: EnvConfig.config.authBaseUrl,
      interceptors: [AuthInterceptor()],
    );
  }

  @singleton
  @Named('s3Dio')
  Dio s3Dio() {
    return DioFactory.create(baseUrl: '', sendTimeout: const Duration(days: 1));
  }
}
