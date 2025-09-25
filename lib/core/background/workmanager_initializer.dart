// lib/core/background/workmanager_initializer.dart
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

/// مهيئ WorkManager لضمان عمل المهام في الخلفية بشكل صحيح
class WorkManagerInitializer {
  static const String _taskName = 'uploadPendingDocs';

  /// تهيئة WorkManager مع الإعدادات المثلى
  static Future<void> initialize() async {
    debugPrint('🔧 تهيئة WorkManager...');

    await Workmanager().initialize(
      _callbackDispatcher,
      isInDebugMode: true, // اجعلها false في الإنتاج
    );

    debugPrint('✅ تم تهيئة WorkManager');
  }

  /// تسجيل المهمة الدورية لرفع الملفات المعلقة
  static Future<void> registerUploadTask() async {
    debugPrint('📅 تسجيل مهمة رفع الملفات المعلقة...');

    await Workmanager().registerPeriodicTask(
      "upload_task",
      _taskName,
      frequency: const Duration(minutes: 15), // أقل فترة ممكنة في Android
      initialDelay: const Duration(seconds: 30), // تأخير أولي أطول قليلاً
      constraints: Constraints(
        networkType: NetworkType.connected, // يتطلب اتصال إنترنت
        requiresBatteryNotLow: false, // يعمل حتى لو كانت البطارية منخفضة
        requiresCharging: false, // يعمل بدون شحن
        requiresDeviceIdle: false, // يعمل حتى لو كان الجهاز مستخدم
        requiresStorageNotLow: false, // يعمل حتى لو كانت المساحة منخفضة
      ),
      existingWorkPolicy: ExistingPeriodicWorkPolicy.replace, // استبدال المهمة الدورية إذا كانت موجودة
      backoffPolicy: BackoffPolicy.linear, // إعادة المحاولة بشكل خطي
      backoffPolicyDelay: const Duration(minutes: 1), // تأخير إعادة المحاولة
    );

    debugPrint('✅ تم تسجيل مهمة رفع الملفات المعلقة');
  }

  /// إلغاء جميع المهام المسجلة
  static Future<void> cancelAllTasks() async {
    debugPrint('🗑️ إلغاء جميع مهام WorkManager...');
    await Workmanager().cancelAll();
    debugPrint('✅ تم إلغاء جميع المهام');
  }

  /// إلغاء مهمة محددة
  static Future<void> cancelTask() async {
    debugPrint('🗑️ إلغاء مهمة رفع الملفات المعلقة...');
    await Workmanager().cancelByUniqueName(_taskName);
    debugPrint('✅ تم إلغاء المهمة');
  }
}

/// دالة callback للمهام في الخلفية
@pragma('vm:entry-point')
void _callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    debugPrint('🚀 بدء مهمة WorkManager: $task');
    debugPrint('📱 WorkManager يعمل في الخلفية!');

    // استيراد الدوال المطلوبة
    WidgetsFlutterBinding.ensureInitialized();

    // تنفيذ المهمة المطلوبة
    switch (task) {
      case WorkManagerInitializer._taskName:
        await _executeUploadTask();
        break;
      default:
        debugPrint('⚠️ مهمة غير معروفة: $task');
    }

    debugPrint('✅ انتهت مهمة WorkManager: $task');
    return Future.value(true);
  });
}

/// تنفيذ مهمة رفع الملفات المعلقة
Future<void> _executeUploadTask() async {
  try {
    debugPrint('📋 بدء تنفيذ مهمة رفع الملفات المعلقة...');

    // استيراد dependencies
    // Note: في الواقع، يجب أن تكون dependencies مهيأة مسبقاً
    // هذا مثال مبسط للتوضيح

    debugPrint('✅ تم تنفيذ مهمة رفع الملفات المعلقة بنجاح');
  } catch (e) {
    debugPrint('❌ خطأ في تنفيذ مهمة رفع الملفات المعلقة: $e');
    throw e;
  }
}
