import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart' as intl;import 'package:intl/intl_standalone.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/background/workmanager_initializer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }
  } catch (e, st) {
    debugPrint('🔥 Firebase init error: $e');
    debugPrint('$st');
  }
  await AppInitializer.initialize();
  await configureDependencies();
  final workManager = getIt<WorkManagerInitializer>();
  await workManager.initialize();
  await workManager.registerSystemUploadTask();
  await Future.microtask(workManager.startPendingUploads);

  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    FlutterNativeSplash.remove();
    if (kDebugMode) {
      Bloc.observer = AppBlocObserver();
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecuredData();
    }
    runApp(
      const MubinOrdersApp(),
    );
  } catch (error, stackTrace) {
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
  debugPrint('🔥 Error ($context): $error');
  debugPrint('$stackTrace');
  runApp(
    ErrorApp(
      errorDetails: FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: 'app',
        context: ErrorDescription(
          context,
        ),
      ),
    ),
  );
}
