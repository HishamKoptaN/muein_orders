import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Dio Interceptor لإبطاء سرعة الرفع لأغراض الاختبار والمراقبة
class SlowUploadInterceptor extends Interceptor {
  final bool enableSlowMode;
  final Duration delayPerChunk;

  SlowUploadInterceptor({
    this.enableSlowMode = true,
    this.delayPerChunk = const Duration(milliseconds: 100),
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (enableSlowMode && kDebugMode && options.method == 'POST') {
      print('🐌 تم تفعيل الوضع البطيء للرفع');
      print('🐌 التأخير بين كل جزء: ${delayPerChunk.inMilliseconds}ms');
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('❌ خطأ في الرفع البطيء: ${err.message}');
    handler.next(err);
  }
}
