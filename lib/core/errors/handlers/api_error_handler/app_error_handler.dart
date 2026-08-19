// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../failures/failures.dart';
import '../../firebase_errors/firebase_failures.dart';
import 'error_handler.dart';

abstract class AppErrorHandler {
  static Failure toFailure(dynamic error, [StackTrace? stackTrace]) {
    if (error is DioException) {
      final apiError = ErrorHandler.handle(error: error);
      return Failure.serverFailure(message: apiError.message ?? '');
    }
    if (error is FirebaseFailure) {
      return Failure.serverFailure(message: error.message);
    }
    if (error is String) {
      return Failure.serverFailure(message: error);
    }
    return const Failure.serverFailure(message: 'Unexpected error occurred');
  }

  static void logError(dynamic error, [StackTrace? stackTrace]) {
    if (kDebugMode) {
      debugPrint('⚠️ Error: $error');
      debugPrint('📌 StackTrace: $stackTrace');
    }
  }
}
