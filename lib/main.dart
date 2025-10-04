// ignore: unused_import
import 'core/database/shared_pref_helper.dart';
import 'core/config/app_initializer.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'package:path_provider/path_provider.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/background/manual_uploader.dart';
import 'core/di/dependency_injection.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e, st) {
    debugPrint('🔥 Firebase init error: $e');
    debugPrint('$st');
  }
  await configureDependencies();
  // startManualRepeatingUpload();
  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    Bloc.observer = AppBlocObserver();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
    await AppInitializer.initialize();
    FlutterNativeSplash.remove();
    if (kDebugMode) {
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