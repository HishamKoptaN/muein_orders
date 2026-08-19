import 'package:firebase_core/firebase_core.dart';

abstract class Env {
  FirebaseOptions get firebaseOptions;
  String get baseUrl;
  String get userBaseUrl;
  String get authBaseUrl;
  String get envName;
}
