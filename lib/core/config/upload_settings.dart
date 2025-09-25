/// إعدادات التحكم في سرعة الرفع لأغراض الاختبار والمراقبة
class UploadSpeedSettings {
  /// تفعيل الوضع البطيء للرفع
  static const bool enableSlowMode = true;

  /// التأخير قبل بدء الرفع (بالثواني)
  static const int initialDelaySeconds = 3;

  /// التأخير بين كل تحديث للتقدم (بالميلي ثانية)
  static const int progressDelayMs = 500;

  /// التأخير بين كل رفع (بالثواني)
  static const int uploadDelaySeconds = 1;

  /// التأخير بعد كل رفع ناجح (بالثواني)
  static const int successDelaySeconds = 2;

  /// طباعة تفاصيل المراقبة
  static const bool enableDetailedLogging = true;

  /// إعدادات متقدمة للمطورين
  static const bool developerMode = true;
}
