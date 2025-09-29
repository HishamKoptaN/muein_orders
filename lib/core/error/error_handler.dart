import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'firebase_errors.dart';

class AppErrorHandler {
  static void handleError(dynamic error, StackTrace? stackTrace) {
    if (kDebugMode) {
      debugPrint('Error: $error');
      debugPrint('Stack trace: $stackTrace');
    }

    // Log to crash analytics in production
    if (kReleaseMode) {
      // TODO: Integrate with Firebase Crashlytics or similar service
      _logToCrashlytics(error, stackTrace);
    }
  }

  static void _logToCrashlytics(dynamic error, StackTrace? stackTrace) {
    // Implementation for crash reporting
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }

  /// Gets a user-friendly error message from any type of error
  static String getErrorMessage(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    }

    if (error is FirebaseAuthException) {
      return FirebaseErrorHandler.getAuthErrorMessage(error.code);
    }

    if (error is String) {
      return error;
    }

    if (error is Exception) {
      return _handleGenericException(error);
    }

    return 'حدث خطأ غير متوقع';
  }

  static String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return 'انتهت مهلة الاتصال';
      case DioExceptionType.sendTimeout:
        return 'انتهت مهلة إرسال البيانات';
      case DioExceptionType.receiveTimeout:
        return 'انتهت مهلة استقبال البيانات';
      case DioExceptionType.badResponse:
        return _handleHttpError(error.response?.statusCode);
      case DioExceptionType.cancel:
        return 'تم إلغاء الطلب';
      case DioExceptionType.connectionError:
        return 'خطأ في الاتصال بالإنترنت';
      default:
        return 'خطأ في الشبكة';
    }
  }

  static String _handleHttpError(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'طلب غير صحيح';
      case 401:
        return 'غير مخول للوصول';
      case 403:
        return 'ممنوع الوصول';
      case 404:
        return 'المورد غير موجود';
      case 500:
        return 'خطأ في الخادم';
      case 503:
        return 'الخدمة غير متاحة';
      default:
        return 'خطأ في الخادم ($statusCode)';
    }
  }

  static String _handleGenericException(Exception error) {
    if (error is FormatException) {
      return 'تنسيق البيانات غير صالح';
    }

    if (error is TypeError) {
      return 'خطأ في نوع البيانات';
    }

    if (error is NoSuchMethodError) {
      return 'عملية غير مدعومة';
    }

    // Log the error for debugging
    debugPrint('Unhandled error: $error');

    return 'حدث خطأ غير متوقع';
  }
}

class ErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorWidget({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onRetry,
                child: Text(AppLocalizations.of(context).retry),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
