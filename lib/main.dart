import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'config/env_config.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';
import 'core/services/firebase_messaging/firebase_messaging_service.dart';
import 'core/utils/app_logger.dart';

void main() {
  /// 🛡️ Global Error Handling Zone
  /// يقوم بالتقاط جميع الأخطاء غير المعالجة (Unhandled Errors)
  runZonedGuarded(
    () async {
      // تهيئة Flutter
      WidgetsFlutterBinding.ensureInitialized();

      // تهيئة AppLogger
      AppLogger.initialize(enableCrashlytics: true);
      AppLogger.info('🚀 Starting app...', tag: 'MAIN');

      // 🎯 Flutter Framework Error Handler
      FlutterError.onError = (FlutterErrorDetails details) {
        AppLogger.error(
          'Flutter Framework Error: ${details.exceptionAsString()}',
          tag: 'FLUTTER',
          error: details.exception,
          stackTrace: details.stack,
        );

        // إرسال لـ Crashlytics في Production
        if (!kDebugMode) {
          FirebaseCrashlytics.instance.recordFlutterError(details);
        }
      };

      // 🎯 Platform Dispatcher Error Handler (للأخطاء Async)
      PlatformDispatcher.instance.onError = (error, stack) {
        AppLogger.error(
          'Platform Error',
          tag: 'PLATFORM',
          error: error,
          stackTrace: stack,
        );

        // إرسال لـ Crashlytics في Production
        if (!kDebugMode) {
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        }
        return true;
      };

      // تهيئة Firebase
      try {
        await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
        AppLogger.info('✅ Firebase initialized', tag: 'MAIN');

        // تفعيل Crashlytics في Production
        await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
          !kDebugMode,
        );
      } catch (e, st) {
        AppLogger.error(
          'Firebase initialization failed',
          tag: 'MAIN',
          error: e,
          stackTrace: st,
        );
      }

      // تهيئة التطبيق
      await _initializeApp();
    },
    (error, stack) {
      /// 🔴 Unhandled Zone Error
      AppLogger.error(
        'Unhandled Zone Error',
        tag: 'ZONE',
        error: error,
        stackTrace: stack,
      );

      // إرسال لـ Crashlytics في Production
      if (!kDebugMode) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
    },
  );
}

/// تهيئة التطبيق
Future<void> _initializeApp() async {
  try {
    AppLogger.info('🔧 Initializing app...', tag: 'INIT');

    // تهيئة المكونات الأساسية
    await AppInitializer.initialize();
    AppLogger.info('✅ AppInitializer completed', tag: 'INIT');

    // تهيئة Dependency Injection
    await configureDependencies(environment: EnvConfig.config.envName);
    AppLogger.info('✅ Dependencies configured', tag: 'INIT');

    // تهيئة Locale
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';

    // إزالة Splash Screen
    FlutterNativeSplash.remove();

    // تفعيل BlocObserver
    Bloc.observer = AppBlocObserver();
    AppLogger.info('✅ BlocObserver initialized', tag: 'INIT');

    // Debug helpers
    if (kDebugMode) {
      AppLogger.debug('🐛 Debug mode enabled', tag: 'INIT');
    }

    // تهيئة Storage
    await GetStorage.init('translations_cache');
    AppLogger.info('✅ GetStorage initialized', tag: 'INIT');

    // تهيئة Firebase Messaging (تخطي iOS مؤقتًا)
    if (!Platform.isIOS) {
      await getIt<FirebaseMessagingService>().initialize();
      AppLogger.info('✅ Firebase Messaging initialized', tag: 'INIT');
    } else {
      AppLogger.warning('⚠️ Firebase Messaging skipped on iOS', tag: 'INIT');
    }

    AppLogger.info('✅ All services initialized successfully!', tag: 'INIT');

    // تشغيل التطبيق
    runApp(const MueinOrdersApp());
  } catch (error, stackTrace) {
    AppLogger.error(
      'App initialization failed',
      tag: 'INIT',
      error: error,
      stackTrace: stackTrace,
    );
    _handleError(
      error: error,
      stackTrace: stackTrace,
      context: 'app initialization',
    );
  }
}

void _handleError({
  required Object error,
  required StackTrace stackTrace,
  required String context,
}) {
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
