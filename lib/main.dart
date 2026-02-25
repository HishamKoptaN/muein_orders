import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
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
import 'core/background/workmanager_initializer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
    debugPrint('✅ Firebase initialized successfully');
  } catch (e, st) {
    debugPrint('🔥 Firebase init error: $e');
    debugPrint('$st');
  }
  await AppInitializer.initialize();
  await configureDependencies(environment: EnvConfig.config.envName);
  await Future.microtask(_initializeWorkManager);
  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    FlutterNativeSplash.remove();
    Bloc.observer = AppBlocObserver();
    if (kDebugMode) {
      // await SharedPrefHelper.setSecuredString(
      //   key: SharedPrefKeys.jwtToken,
      //   value: '31|QMmDNPE3tTz5HOBgBlIFW6J60JoqXFBn72L1Us7L4f4129b5',);
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecureData();
    }
    await GetStorage.init('translations_cache');
    runApp(const MueinOrdersApp());
  } catch (error, stackTrace) {
    _handleError(
      error: error,
      stackTrace: stackTrace,
      context: 'app initialization',
    );
  }
}

Future<void> _initializeWorkManager() async {
  try {
    final workManager = getIt<WorkManagerInitializer>();
    await workManager.initialize();
    await workManager.registerSystemUploadTask();
    await Future.microtask(workManager.startPendingUploads);
    debugPrint('✅ Work manager initialized');
  } catch (e, st) {
    debugPrint('⚠️ Work manager error: $e');
    debugPrint(st.toString());
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
