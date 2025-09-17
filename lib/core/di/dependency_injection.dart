import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

/// Configure all dependencies using injectable + get_it
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies({
  String environment = Environment.prod,
}) async {
  $initGetIt(
    getIt,
    environment: environment,
  );
}
