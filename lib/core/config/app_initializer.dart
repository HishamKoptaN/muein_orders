import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/performance/performance_manager.dart';

class AppInitializer {
  static Future<void> initialize() async {
    // تهيئة HydratedBloc storage
    if (!kIsWeb) {
      final storageDirectory = await getApplicationDocumentsDirectory();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory(storageDirectory.path),
      );
    } else {
      // للويب، استخدم تخزين بسيط في الذاكرة
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory('mubin_orders'),
      );
    }

    // تهيئة تحسينات الأداء
    await PerformanceManager.initialize();
  }
}
