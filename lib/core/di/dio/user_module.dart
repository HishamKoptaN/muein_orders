import 'package:injectable/injectable.dart';

import '../../../config/env.dart';
import '../../../config/envs/dev_env.dart';
import '../../../config/envs/prod_env.dart';

@module
abstract class UserModule {
  @singleton
  Env get config {
    const env = String.fromEnvironment('FLUTTER_ENV', defaultValue: 'dev');
    if (env == 'prod') {
      return ProdEnv();
    }
    return DevEnv();
  }
}
