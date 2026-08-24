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
import 'core/utils/background/workmanager_initializer.dart';
import 'core/utils/database/shared_pref_helper.dart';
import 'core/utils/database/shared_pref_keys.dart';
import 'features/auth/auth/present/bloc/auth_bloc.dart';
import 'muein_orders_app.dart';
import 'core/widgets/custom_error_widget.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';
import 'core/utils/services/firebase_messaging/firebase_messaging_service.dart';
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
        // if (!Platform.isIOS) {
        //   await Future.microtask(() {
        //     return getIt<FirebaseMessagingService>().initialize();
        //   });
        // }
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
      Bloc.observer = AppBlocObserver();
      await _initializeApp();
    },
    (error, stack) {
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
    }
    if (kDebugMode) {
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: ' 75|p3B7hh4EpWaP2TH130nLbfGXqkjQQMqRvcJ5pcGa91a37a6b',
      );
      //  await SharedPrefHelper.clearAllData();
      //  await SharedPrefHelper.clearAllSecuredData();
    }
    runApp(const MueinOrdersApp());
    await _initializeWorkManager();
  } catch (error, stackTrace) {
    _handleError(
      error: error,
      stackTrace: stackTrace,
      context: 'app initialization',
    );
  }
}

Future<void> _initializeWorkManager() async {
  final workManager = getIt<WorkManagerInitializer>();
  await workManager.initialize();
  await workManager.registerSystemUploadTask();
  await Future.microtask(workManager.startPendingUploads);
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
