import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../env.dart';
import '../firebase/prod_firebase_options.dart';

class ProdEnv implements Env {
  @override
  FirebaseOptions get firebaseOptions => ProdFirebaseOptions.currentPlatform;
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get authBaseUrl => 'https://auth.example.com';

  @override
  String get envName => 'prod';
}
