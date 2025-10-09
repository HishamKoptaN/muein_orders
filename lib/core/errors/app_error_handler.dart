// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_error_handler.dart';
import 'api_error_model.dart';
import 'failures.dart';
import 'firebase_failures.dart';

abstract class AppErrorHandler {
  static Failure toFailure(dynamic error, [StackTrace? stackTrace]) {
    if (error is DioException) {
      final apiError =
          ApiErrorHandler.handle(error: error, stackTrace: stackTrace);
      return Failure.serverFailure(message: apiError.message ?? 'Server error');
    }
    if (error is FirebaseFailure) {
      return Failure.serverFailure(message: error.message);
    }
    if (error is String) {
      return Failure.serverFailure(message: error);
    }
    return const Failure.serverFailure(message: 'Unexpected error occurred');
  }

  static ApiErrorModel toApiError(dynamic error, [StackTrace? stackTrace]) {
    if (error is DioException) {
      return ApiErrorHandler.handle(error: error, stackTrace: stackTrace);
    }
    if (error is FirebaseFailure) {
      return ApiErrorModel(
        message: error.message,
        statusCode: 400,
        error: error.code,
        data: error,
      );
    }
    if (error is String) {
      return ApiErrorModel(
        message: error,
        statusCode: 500,
        error: 'string_error',
      );
    }
    return const ApiErrorModel(
      message: 'An unexpected error occurred',
      statusCode: 500,
      error: 'unexpected_error',
    );
  }

  static String toMessage(dynamic error, [StackTrace? stackTrace]) {
    if (error is Failure) return error.errorMessage;
    if (error is FirebaseFailure) return error.message;
    if (error is DioException) {
      final apiError =
          ApiErrorHandler.handle(error: error, stackTrace: stackTrace);
      return apiError.message ?? 'Server error';
    }
    if (error is String) return error;
    return 'حدث خطأ غير متوقع، حاول مرة أخرى';
  }

  static void logError(dynamic error, [StackTrace? stackTrace]) {
    if (kDebugMode) {
      debugPrint('⚠️ Error: $error');
      debugPrint('📌 StackTrace: $stackTrace');
    }
  }
}
