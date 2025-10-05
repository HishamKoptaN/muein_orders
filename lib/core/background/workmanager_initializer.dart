import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:workmanager/workmanager.dart';

import '../di/dependency_injection.dart';
import 'background_tasks.dart';

const String uploadTaskName = 'upload_docs_task';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

    if (taskName == uploadTaskName) {
      debugPrint('📦 WorkManager: بدء تنفيذ مهمة رفع التوثيقات...');
      await startUploadDocs();
    }

    return Future.value(true);
  });
}

@lazySingleton
class WorkManagerInitializer {
  Timer? _timer;

  Future<void> initialize() async {
    await Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
    debugPrint('✅ WorkManager تم تهيئته بنجاح');
  }

  //! 🔹 يُنفذ أول مرة فور فتح التطبيق
  //! 🔹 ثم كل 5 دقائق طالما التطبيق مفتوح أو في الخلفية
  Future<void> startRealtimeUploads() async {
    await startUploadDocs(); // تنفيذ فوري
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(minutes: 5), (_) async {
      debugPrint('⏱️ تنفيذ دوري كل 5 دقائق داخل التطبيق');
      await startUploadDocs();
    });
  }

  //! 🔹 تعمل حتى بعد إغلاق التطبيق تمامًا كل 15 دقيقة (الحد الأدنى للنظام)
  Future<void> registerSystemUploadTask() async {
    await Workmanager().registerPeriodicTask(
      'unique_upload_docs_task',
      uploadTaskName,
      frequency: const Duration(minutes: 15), // لا يمكن أقل من ذلك
      initialDelay: const Duration(minutes: 15),
      constraints: Constraints(networkType: NetworkType.connected),
      existingWorkPolicy: ExistingPeriodicWorkPolicy.replace,
    );
    debugPrint('🕓 تم تسجيل مهمة WorkManager الرسمية كل 15 دقيقة');
  }
}
