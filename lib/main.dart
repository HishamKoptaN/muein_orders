import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/config/app_initializer.dart';
import 'core/extensions/app_localizations_extension.dart';

Future<void> main() async {
  // 1️⃣ لازم bindings هنا
  final widgetsBinding = await WidgetsFlutterBinding.ensureInitialized();
  // 2️⃣ خلي الـ splash شغال
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // 3️⃣ ادخل جوه zone
  await runZonedGuarded(
    () async {
      try {
        // init كل حاجة
        await AppInitializer.initialize();
        // init localization
        AppLocalizationsExtension.initializeEnglishFallback();
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
              context: ErrorDescription('during app initialization'),
            ),
          ),
        );
      }
    },
    (error, stackTrace) {
      debugPrint('🔥 Uncaught Error: $error');
      debugPrint('$stackTrace');
      runApp(
        ErrorApp(
          errorDetails: FlutterErrorDetails(
            exception: error,
            stack: stackTrace,
            library: 'app',
            context: ErrorDescription('uncaught error'),
          ),
        ),
      );
    },
  );
}
