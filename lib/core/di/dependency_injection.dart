import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';
import 'get_it_instance.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib'],
)
Future<void> configureDependencies() async {
  // Initialize injectable dependencies
  getIt.init();
}
