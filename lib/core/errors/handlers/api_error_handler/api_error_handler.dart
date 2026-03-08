import 'package:dio/dio.dart';

import '../../api_error_model/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle({required dynamic error}) {
    if (error is DioException) {
      return _handleDioException(error: error);
    } else {
      return const ApiErrorModel(
        message: 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً',
      );
    }
  }

  static ApiErrorModel _handleDioException({required DioException error}) {
    if (error.response != null && error.response!.data != null) {
      try {
        return ApiErrorModel.fromJson(error.response!.data);
      } catch (e) {
        return const ApiErrorModel(message: 'فشل في معالجة بيانات السيرفر');
      }
    }
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const ApiErrorModel(message: 'انتهت مهلة الاتصال بالخادم');
      case DioExceptionType.connectionError:
        return const ApiErrorModel(message: 'لا يوجد اتصال بالإنترنت');
      case DioExceptionType.sendTimeout:
        return const ApiErrorModel(message: 'انتهت مهلة إرسال البيانات');
      case DioExceptionType.receiveTimeout:
        return const ApiErrorModel(message: 'انتهت مهلة استقبال البيانات');
      case DioExceptionType.cancel:
        return const ApiErrorModel(message: 'تم إلغاء الطلب');
      default:
        return const ApiErrorModel(message: 'حدث خطأ أثناء الاتصال');
    }
  }
}
