import 'package:flutter/foundation.dart';

class S3Config {
  static const String devBucket = 'my-app-dev-bucket';
  static const String prodBucket = 'my-app-prod-bucket';

  static String get currentBucket => kReleaseMode ? prodBucket : devBucket;

  // يفضل أن تأخذ هذه البيانات من الـ API الخاص بلارافل لزيادة الأمان
}
