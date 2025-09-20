import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_observer.dart';
import 'core/config/app_initializer.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = AppBlocObserver();
      try {
        await AppInitializer.initialize();
        // شغل الأب
        runApp(const MubinOrdersAppWrapper());
        // remove splash
        WidgetsBinding.instance.addPostFrameCallback((_) {
          FlutterNativeSplash.remove();
        });
      } catch (error, stackTrace) {
        debugPrint('🔥 Uncaught Error: $error');
        debugPrint('$stackTrace');
        runApp(
          ErrorApp(
            errorDetails: FlutterErrorDetails(
              exception: error,
              stack: stackTrace,
              library: 'app',
              context: ErrorDescription('during app initialization',),
            ),
          ),
        );
      }
    },
    (error, stackTrace) {
      debugPrint('🔥 Uncaught Error: $error',);
      debugPrint('$stackTrace',);
      runApp(
        ErrorApp(
          errorDetails: FlutterErrorDetails(
            exception: error,
            stack: stackTrace,
            library: 'app',
            context: ErrorDescription('uncaught error',),
          ),
        ),
      );
    },
  );
}
