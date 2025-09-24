import 'dart:async';
// import 'package:ffmpeg_kit_flutter_full_gpl/ffmpeg_kit_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';
// import 'core/database/shared_pref_helper.dart';
import 'core/di/dependency_injection.dart';
Future<void> main() async {
  // Initialize Flutter bindings first
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  try {
    // Initialize Flutter Intl
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    // Initialize Firebase
    await Firebase.initializeApp();
    // Configure dependencies
    await configureDependencies();
    // Set up BLoC observer
    Bloc.observer = AppBlocObserver();
    // Initialize app dependencies
    await AppInitializer.initialize();
    // Clear any existing auth data for testing
    // SharedPrefHelper.clearAllSecuredData();
    // Run the app
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
