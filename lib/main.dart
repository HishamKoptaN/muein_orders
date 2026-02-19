import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'config/env_config.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/background/workmanager_initializer.dart';
import 'core/config/app_initializer.dart';
import 'core/database/shared_pref_helper.dart';
import 'core/database/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
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
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: '3|vhEJ96yP3OqTHAmbrtEJqZJOH2qfpMsRV3GkQ7yH399f99df',
      );
    }
    runApp(const MueinOrdersApp());
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
