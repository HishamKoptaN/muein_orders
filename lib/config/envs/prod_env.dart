import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../env.dart';
import '../firebase/prod/firebase_options.dart';
import '../firebase/prod_firebase_options.dart';

class ProdEnv extends Env {
  @override
  String get envName {
    return 'prod';
  }

  @override
  FirebaseOptions get firebaseOptions {
    return ProdFirebaseOptions.currentPlatform;
  }

  @override
  String get baseUrl {
    return 'https://muein.online/api';
  }

  @override
  String get authBaseUrl {
    return '$baseUrl/auth/';
  }

  @override
  String get userBaseUrl {
    return '$baseUrl/user/';
  }
}
