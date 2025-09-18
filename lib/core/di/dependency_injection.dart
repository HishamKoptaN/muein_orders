import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart'; // لازم يتولد

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies({
  String environment = Environment.prod,
}) async {
  // ✅ PrefsStorageService
  $initGetIt(
    getIt,
    environment: environment,
  );
}
