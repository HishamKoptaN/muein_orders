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
import 'core/config/app_initializer.dart';
import 'core/database/shared_pref_helper.dart';
import 'core/database/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';
import 'core/services/firebase_messaging/firebase_messaging_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
  } catch (e, st) {
    debugPrint('$st$e');
  }
  await AppInitializer.initialize();
  await configureDependencies(environment: EnvConfig.config.envName);
  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'en';
    FlutterNativeSplash.remove();
    Bloc.observer = AppBlocObserver();
    if (kDebugMode) {
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: '69|PP9zkPz1QjU9jWRXgJXAtF6JlVUanS5PWAbDefTC505606b8',
      );
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecuredData();
    }
    await GetStorage.init('translations_cache');
    await getIt<FirebaseMessagingService>().initialize();
    // await DeepLinkService.instance.initialize();
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
