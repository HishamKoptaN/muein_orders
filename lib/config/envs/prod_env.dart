import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../env.dart';
import '../firebase/prod_firebase_options.dart';

class ProdEnv extends Env {
  @override
  FirebaseOptions get firebaseOptions => ProdFirebaseOptions.currentPlatform;
  @override
  String get baseUrl => 'https://muein.online/api/';

  @override
  String get authBaseUrl => 'https://muein.online/auth/';

  @override
  String get envName => 'prod';
}
