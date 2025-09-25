import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'package:path_provider/path_provider.dart';
import 'package:workmanager/workmanager.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';
import 'features/docs/data/datasources/local/drift/app_database.dart';
import 'core/config/upload_settings.dart';
import 'features/docs/domain/usecases/docs_use_cases.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    debugPrint('🚀 WorkManager task [$task] started with input: $inputData');
    debugPrint('📱 WorkManager يعمل في الخلفية!');

    try {
      await configureDependencies();
      final db = getIt<AppDatabase>();
      final docsUseCase = getIt<DocsUseCase>();

      if (task == 'uploadPendingDocs') {
        debugPrint('📋 بدء مهمة رفع الملفات المعلقة...');
        final pendingDocs = await (db.select(db.cachedDocs)
              ..where((tbl) => tbl.uploadStatus.equals('pending')))
            .get();
        debugPrint(
            '📂 تم العثور على ${pendingDocs.length} pending docs في WorkManager');

        if (pendingDocs.isEmpty) {
          debugPrint('⚠️ لا توجد مستندات معلقة في WorkManager');
          return Future.value(true);
        }
        for (final doc in pendingDocs) {
          if (UploadSpeedSettings.enableDetailedLogging) {
            debugPrint(
                '⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في WorkManager');
          }

          // إضافة تأخير بين كل رفع
          await Future.delayed(Duration(seconds: UploadSpeedSettings.uploadDelaySeconds));

          try {
            final result = await docsUseCase.createDoc(doc: doc);
            if (UploadSpeedSettings.enableDetailedLogging) {
              debugPrint('✅ تم رفع doc id=${doc.id} بنجاح في WorkManager: $result');
            }

            // إضافة تأخير بعد كل رفع ناجح
            await Future.delayed(Duration(seconds: UploadSpeedSettings.successDelaySeconds));
          } catch (e) {
            debugPrint('❌ خطأ في رفع doc id=${doc.id} في WorkManager: $e');
          }
        }
        debugPrint('✅ انتهت مهمة رفع الملفات المعلقة');
      } else {
        debugPrint('⚠️ مهمة غير معروفة: $task');
      }
    } catch (e) {
      debugPrint('❌ خطأ في WorkManager task: $e');
    }
    debugPrint('✅ انتهت المهمة [$task]');
    return Future.value(true);
  });
}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  try {
    await Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: true,
    );
    debugPrint('✅ تم تهيئة WorkManager بنجاح');
  } catch (e) {
    debugPrint('⚠️ خطأ في تهيئة WorkManager: $e');
    debugPrint('سيتم استخدام الرفع اليدوي بدلاً من الخلفية');
  }
  try {
    await Workmanager().registerPeriodicTask(
      "upload_task",
      "uploadPendingDocs",
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(seconds: 30),
      constraints: Constraints(
        networkType: NetworkType.connected,
        requiresBatteryNotLow: false,
        requiresCharging: false,
        requiresDeviceIdle: false,
      ),
    );
    debugPrint('✅ تم تسجيل المهمة الدورية');
  } catch (e) {
    debugPrint('⚠️ خطأ في تسجيل المهمة الدورية: $e');
    debugPrint('سيتم الاعتماد على الرفع اليدوي فقط');
  }
  startImmediateUpload();

  // إضافة تأخير للتأكد من تهيئة جميع الخدمات
  await Future.delayed(const Duration(seconds: 2));

  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    await Firebase.initializeApp();
    Bloc.observer = AppBlocObserver();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
    await AppInitializer.initialize();

    runApp(
      const MubinOrdersApp(),
    );
  } catch (error, stackTrace) {
    _handleError(error, stackTrace, 'app initialization');
  }
}

void _handleError(Object error, StackTrace stackTrace, String context) {
  debugPrint('🔥 Error ($context): $error');
  debugPrint('$stackTrace');
  runApp(
    ErrorApp(
      errorDetails: FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: 'app',
        context: ErrorDescription(context),
      ),
    ),
  );
}

Future<void> startImmediateUpload() async {
  try {
    debugPrint('🚀 بدء startImmediateUpload...');
    final db = getIt<AppDatabase>();
    final docsUseCase = getIt<DocsUseCase>();

    // التحقق من وجود pending docs
    final pendingDocs = await (db.select(db.cachedDocs)
          ..where(
            (tbl) => tbl.uploadStatus.equals(
              'pending',
            ),
          ))
        .get();

    debugPrint(
      '📂 تم العثور على ${pendingDocs.length} pending docs في startImmediateUpload',
    );

    if (pendingDocs.isEmpty) {
      debugPrint('⚠️ لا توجد مستندات معلقة للرفع');
      return;
    }

    if (UploadSpeedSettings.enableDetailedLogging) {
      debugPrint('⏰ انتظار ${UploadSpeedSettings.initialDelaySeconds} ثواني قبل بدء الرفع...');
    }
    await Future.delayed(Duration(seconds: UploadSpeedSettings.initialDelaySeconds));

    for (final doc in pendingDocs) {
      if (UploadSpeedSettings.enableDetailedLogging) {
        debugPrint(
            '⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في startImmediateUpload');
      }

      // إضافة تأخير بين كل رفع
      await Future.delayed(Duration(seconds: UploadSpeedSettings.uploadDelaySeconds));

      try {
        final result = await docsUseCase.createDoc(doc: doc);
        if (UploadSpeedSettings.enableDetailedLogging) {
          debugPrint('✅ نتيجة رفع doc id=${doc.id}: $result');
        }

        // إضافة تأخير بعد كل رفع ناجح
        await Future.delayed(Duration(seconds: UploadSpeedSettings.successDelaySeconds));
      } catch (e) {
        debugPrint('❌ خطأ في رفع doc id=${doc.id}: $e');
      }
    }
    debugPrint(
      '✅ انتهى startImmediateUpload',
    );
  } catch (e) {
    debugPrint(
      '❌ خطأ في startImmediateUpload: $e',
    );
  }
}
