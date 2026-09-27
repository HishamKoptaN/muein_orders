import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'Interceptor.dart';

abstract class DioFactory {
  static Dio create({
    required String baseUrl,
    Duration connectTimeout = const Duration(seconds: 60),
    Duration receiveTimeout = const Duration(seconds: 60),
    Duration? sendTimeout,
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        sendTimeout: sendTimeout,
        transformTimeout: const Duration(seconds: 60),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.addAll([
      ...interceptors,
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          error: true,
          compact: true,
          logPrint: (obj) => debugPrint(obj.toString()),
        ),
    ]);
    return dio;
  }
}
