import 'env.dart';
import 'envs/dev_env.dart';
import 'envs/prod_env.dart';

class EnvConfig {
  static final Env _config = _getConfig();

  static Env _getConfig() {
    const env = String.fromEnvironment('FLUTTER_ENV', defaultValue: 'dev');
    switch (env) {
      case 'prod':
        return ProdEnv();
      case 'dev':
      default:
        return DevEnv();
    }
  }

  static Env get config => _config;
}
