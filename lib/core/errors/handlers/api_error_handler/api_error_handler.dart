import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../api_error_model/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle({required dynamic error}) {
    developer.log('[API_ERROR] 🔴 Handling error: ${error.runtimeType}');
    if (error is DioException) {
      developer.log('[API_ERROR] 📡 DioException type: ${error.type}');
      developer.log('[API_ERROR] 📡 DioException message: ${error.message}');
      developer.log(
        '[API_ERROR] 📡 DioException response: ${error.response?.data}',
      );
      return _handleDioException(error: error);
    } else if (error is FirebaseAuthException) {
      developer.log('[API_ERROR] 🔥 FirebaseAuthException code: ${error.code}');
      developer.log(
        '[API_ERROR] 🔥 FirebaseAuthException message: ${error.message}',
      );
      return ApiErrorModel(message: _getFirebaseAuthErrorMessage(error.code));
    } else {
      developer.log('[API_ERROR] ⚠️ Unknown error: $error');
      return const ApiErrorModel(
        message: 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً',
      );
    }
  }

  static String _getFirebaseAuthErrorMessage(String code) {
    switch (code) {
      case 'user-not-found':
        return 'المستخدم غير موجود';
      case 'wrong-password':
        return 'كلمة المرور غير صحيحة';
      case 'invalid-email':
        return 'البريد الإلكتروني غير صالح';
      case 'user-disabled':
        return 'تم تعطيل الحساب';
      case 'too-many-requests':
        return 'محاولات كثيرة، يرجى المحاولة لاحقاً';
      default:
        return 'خطأ في المصادقة: $code';
    }
  }

  static ApiErrorModel _handleDioException({required DioException error}) {
    developer.log('[API_ERROR] 📡 Handling DioException...');
    if (error.response != null && error.response!.data != null) {
      try {
        developer.log('[API_ERROR] ✅ Parsed server response');
        return ApiErrorModel.fromJson(error.response!.data);
      } catch (e) {
        developer.log('[API_ERROR] ❌ Failed to parse server response: $e');
        return const ApiErrorModel(message: 'فشل في معالجة بيانات السيرفر');
      }
    }
    String message;
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        message = 'انتهت مهلة الاتصال بالخادم';
        break;
      case DioExceptionType.connectionError:
        message = 'لا يوجد اتصال بالإنترنت';
        break;
      case DioExceptionType.sendTimeout:
        message = 'انتهت مهلة إرسال البيانات';
        break;
      case DioExceptionType.receiveTimeout:
        message = 'انتهت مهلة استقبال البيانات';
        break;
      case DioExceptionType.cancel:
        message = 'تم إلغاء الطلب';
        break;
      default:
        message = 'حدث خطأ أثناء الاتصال';
    }
    developer.log('[API_ERROR] 📡 Dio error message: $message');
    return ApiErrorModel(message: message);
  }
}
