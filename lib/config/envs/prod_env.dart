import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../../firebase_options.dart';
import '../env.dart';

class ProdEnv implements Env {
  @override
  FirebaseOptions get firebaseOptions => DefaultFirebaseOptions.currentPlatform;
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get authBaseUrl => 'https://auth.example.com';
}

final Env env = ProdEnv();
