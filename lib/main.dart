import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';
import 'core/di/dependency_injection.dart';

Future<void> main() async {
  // Initialize Flutter bindings first
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    _handleError(
      details.exception,
      details.stack ?? StackTrace.current,
      'flutter error',
    );
  };

  try {
    // Initialize Firebase
    await Firebase.initializeApp();

    // Configure dependencies 
    await configureDependencies();

    // Set up BLoC observer
    Bloc.observer = AppBlocObserver();

    // Initialize app dependencies
    await AppInitializer.initialize();

    // Run the app
    runApp(
      const MubinOrdersApp(),
    );

    // Remove splash screen after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
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
