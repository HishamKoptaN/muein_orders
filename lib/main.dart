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
import 'core/database/shared_pref_helper.dart';
import 'core/database/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';
import 'core/services/firebase_messaging/firebase_messaging_service.dart';
import 'core/utils/app_logger.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      AppLogger.initialize(enableCrashlytics: true);
      FlutterError.onError = (FlutterErrorDetails details) {
        AppLogger.error(
          'Flutter Framework Error: ${details.exceptionAsString()}',
          tag: 'FLUTTER',
          error: details.exception,
          stackTrace: details.stack,
        );
        FirebaseCrashlytics.instance.recordFlutterError(details);
      };
      PlatformDispatcher.instance.onError = (error, stack) {
        AppLogger.error(
          'Platform Error',
          tag: 'PLATFORM',
          error: error,
          stackTrace: stack,
        );
        if (!kDebugMode) {
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        }
        return true;
      };
      try {
        await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
        AppLogger.info('✅ Firebase initialized', tag: 'MAIN');
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
      await _initializeApp();
    },
    (error, stack) {
      AppLogger.error(
        'Unhandled Zone Error',
        tag: 'ZONE',
        error: error,
        stackTrace: stack,
      );
      if (!kDebugMode) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
    },
  );
}

Future<void> _initializeApp() async {
  try {
    await AppInitializer.initialize();
    await configureDependencies(environment: EnvConfig.config.envName);
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    FlutterNativeSplash.remove();
    Bloc.observer = AppBlocObserver();
    await GetStorage.init('translations_cache');
    if (!Platform.isIOS) {
      await getIt<FirebaseMessagingService>().initialize();
      AppLogger.info('✅ Firebase Messaging initialized', tag: 'INIT');
    } else {
      AppLogger.warning('⚠️ Firebase Messaging skipped on iOS', tag: 'INIT');
    }
    AppLogger.info('✅ All services initialized successfully!', tag: 'INIT');
    if (kDebugMode) {
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: '15|aHyF6hoYkwAi5PuSmPOAxBYdnsJnFGh3d4Y9IU8W85d83752',
      );
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecuredData();
    }
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
