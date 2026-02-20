import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../env.dart';
import '../firebase/dev_firebase_options.dart';

class DevEnv extends Env {
  @override
  FirebaseOptions get firebaseOptions => DevFirebaseOptions.currentPlatform;
  @override
  String get baseUrl =>
      'https://hotpink-gnu-383634.hostingersite.com/mapi/api/';
  @override
  String get authBaseUrl =>
      'https://hotpink-gnu-383634.hostingersite.com/mapi/auth/';
}
