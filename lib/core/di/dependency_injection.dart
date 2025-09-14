import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mubin_orders/core/di/dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  // Initialize injectable dependencies
  await getIt.init();
}
