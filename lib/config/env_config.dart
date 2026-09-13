import 'dart:io';

import 'env.dart';
import 'envs/dev_env.dart';
import 'envs/prod_env.dart';

class EnvConfig {
  static const String _envTag = String.fromEnvironment(
    'ENV',
    defaultValue: 'dev',
  );
  static final Env _config = _initialize();
  static Env _initialize() {
    if (Platform.isIOS) {
      return ProdEnv();
    }
    switch (_envTag) {
      case 'prod':
        return ProdEnv();
      case 'dev':
      default:
        return DevEnv();
    }
  }

  static Env get config {
    return _config;
  }
}
