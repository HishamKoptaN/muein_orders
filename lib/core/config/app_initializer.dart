import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/performance/performance_manager.dart';

class AppInitializer {
  static Future<void> initialize() async {
    // Initialize Firebase
    await Firebase.initializeApp();

    // Initialize HydratedBloc storage
    if (!kIsWeb) {
      final storageDirectory = await getApplicationDocumentsDirectory();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory(storageDirectory.path),
      );
    } else {
      // For web, use a simple in-memory storage
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory('mubin_orders'),
      );
    }

    // Initialize performance optimizations
    await PerformanceManager.initialize();
  }
}
