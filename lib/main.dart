import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/config/app_initializer.dart';
import 'core/extensions/app_localizations_extension.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      // Initialize Flutter bindings
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      // Keep native splash showing while initializing
      FlutterNativeSplash.preserve(
        widgetsBinding: widgetsBinding,
      );
      try {
        // Initialize app
        await AppInitializer.initialize();
        // Initialize English fallback for localizations
        AppLocalizationsExtension.initializeEnglishFallback();
        // Start the app
        runApp(const MubinOrdersAppWrapper());
        // Remove splash after first frame
        WidgetsBinding.instance.addPostFrameCallback((_) {
          FlutterNativeSplash.remove();
        });
      } catch (error, stackTrace) {
        // Handle initialization errors
        debugPrint(
          'Error during app initialization: $error',
        );
        debugPrint('Stack trace: $stackTrace');

        // Show error UI
        runApp(
          ErrorApp(
            errorDetails: FlutterErrorDetails(
              exception: error,
              stack: stackTrace,
              library: 'app',
              context: ErrorDescription(
                'during app initialization',
              ),
            ),
          ),
        );
      }
    },
    (error, stackTrace) {
      // Handle uncaught errors
      debugPrint(
        'Uncaught error: $error',
      );
      debugPrint(
        'Stack trace: $stackTrace',
      );
      // Show error UI
      runApp(
        ErrorApp(
          errorDetails: FlutterErrorDetails(
            exception: error,
            stack: stackTrace,
            library: 'app',
            context: ErrorDescription(
              'uncaught error',
            ),
          ),
        ),
      );
    },
  );
}
