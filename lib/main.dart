import 'dart:async';
import 'package:drift/drift.dart';
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
import 'core/background/background_tasks.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';
import 'features/docs/data/datasources/local/drift/app_database.dart';

Future<void> main() async {
  // Initialize Flutter bindings first
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
  startImmediateUpload();

  // إضافة بيانات اختبارية للتأكد من وجود pending docs
  await addTestData();

  // اختبار WorkManager يدوياً
  await testWorkManager();

  debugPrint('📱 بدء تهيئة WorkManager...');
 

  debugPrint('📅 تسجيل المهمة الدورية...');
  try {
    await Workmanager().registerPeriodicTask(
      "upload_task",
      "uploadPendingDocs",
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(seconds: 10),
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
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
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
    // final db = AppDatabase();
    // await db.into(db.cachedDocs).insert(
    //       CachedDocsCompanion.insert(
    //         orderId: 2,
    //         imageOne: const Value("image1.png"),
    //         imageTwo: const Value("image2.png"),
    //         videoOne: const Value("video1.mp4"),
    //         videoTwo: const Value("video2.mp4"),
    //         latitude: const Value(30.12345),
    //         longitude: const Value(31.56789),
    //         shippingCost: const Value(150.75),
    //         uploadStatus: "uploading",
    //         uploadProgress: Value(20.0),
    //       ),
    //     );

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

/// إضافة بيانات اختبارية للتأكد من وجود pending docs
Future<void> addTestData() async {
  try {
    final db = getIt<AppDatabase>();

    // التحقق من وجود بيانات pending
    final existingDocs = await (db.select(db.cachedDocs)
          ..where((tbl) => tbl.uploadStatus.equals('pending')))
        .get();

    if (existingDocs.isEmpty) {
      debugPrint('📝 إضافة بيانات اختبارية...');

      // إضافة بيانات اختبارية
      await db.insertDoc(
        doc: CachedDocsCompanion.insert(
          orderId: 2,
          imageOne: const Value('test_image1.jpg'),
          imageTwo: const Value('test_image2.jpg'),
          videoOne: const Value('test_video1.mp4'),
          videoTwo: const Value('test_video2.mp4'),
          latitude: const Value(30.0444),
          longitude: const Value(31.2357),
          shippingCost: const Value(150.0),
          uploadStatus: 'pending',
          uploadProgress: const Value(0.0),
        ),
      );
      debugPrint('✅ تم إضافة بيانات اختبارية بنجاح');
    } else {
      debugPrint('📂 موجود ${existingDocs.length} pending docs بالفعل');
    }
  } catch (e) {
    debugPrint('❌ خطأ في إضافة البيانات الاختبارية: $e');
  }
}
