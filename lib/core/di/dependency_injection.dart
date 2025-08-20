import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mubin_orders/core/di/dependency_injection.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: 'initGetIt',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  getIt.initGetIt();
}
