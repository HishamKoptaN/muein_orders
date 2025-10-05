/// إعدادات التحكم في سرعة الرفع لأغراض الاختبار والمراقبة
class UploadSpeedSettings {
  /// تفعيل الوضع البطيء للرفع
  static const bool enableSlowMode = true;

  /// التأخير قبل بدء الرفع (بالثواني) - زيادة كبيرة لأدنى سرعة
  static const int initialDelaySeconds = 30; // زيادة من 20 إلى 30 ثانية

  /// التأخير بين كل تحديث للتقدم (بالميلي ثانية) - لمراقبة أفضل
  static const int progressDelayMs = 1500; // زيادة من 1000 إلى 1500 ميلي ثانية

  /// التأخير بين كل رفع (بالثواني) - زيادة كبيرة
  static const int uploadDelaySeconds = 25; // زيادة من 15 إلى 25 ثانية

  /// التأخير بعد كل رفع ناجح (بالثواني) - زيادة كبيرة لأدنى سرعة
  static const int successDelaySeconds = 30; // زيادة من 20 إلى 30 ثانية

  /// طباعة تفاصيل المراقبة
  static const bool enableDetailedLogging = true;

  /// إعدادات متقدمة للمطورين
  static const bool developerMode = true;

  /// نسبة الإلغاء في وضع التطوير (للاختبار) - أقل من 100% لمراقبة التقدم
  static const double debugCancelPercentage = 85.0; // إلغاء عند 85% بدلاً من 70%

  /// تفعيل محاكاة التقدم البطيء (للاختبار والمراقبة)
  static const bool enableSimulatedProgress = true;

  /// سرعة محاكاة التقدم (كلما زاد الرقم، كان أبطأ)
  static const int progressSimulationSpeed = 3000; // زيادة من 2000 إلى 3000 ميلي ثانية لكل 1%

  /// سرعة الرفع بالكيلوبايت في الثانية (لـ bandwidth throttling)
  static const int uploadSpeedKbps = 1; // 1 كيلوبايت في الثانية

  /// حجم الـ chunk لكل إرسال (بالبايت)
  static const int chunkSizeBytes = 1024; // 1 كيلوبايت لكل chunk

  // ملاحظة: تم إيقاف استخدام Dio Interceptor للإبطاء في Dio 5.x
  // استخدم SlowestUploadInterceptor.createProgressCallback() بدلاً من ذلك
  /// تفعيل Dio Interceptor لإبطاء الرفع (غير مدعوم في Dio 5.x)
  @Deprecated('استخدم SlowestUploadInterceptor.createProgressCallback() بدلاً من ذلك')
  static const bool enableDioSlowUpload = false;

  /// تأخير Dio Interceptor بين كل جزء مرفوع (ميلي ثانية) - قديم
  @Deprecated('استخدم SlowestUploadInterceptor.createProgressCallback() بدلاً من ذلك')
  static const int dioUploadDelayMs = 300;
}
