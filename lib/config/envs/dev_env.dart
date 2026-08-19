import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

import '../env.dart';
import '../firebase/dev/firebase_options.dart';

class DevEnv extends Env {
  @override
  String get envName {
    return 'dev';
  }

  @override
  FirebaseOptions get firebaseOptions {
    return DevFirebaseOptions.currentPlatform;
  }
  @override
  String get baseUrl {
    if (kReleaseMode) {
      return 'https://dev.muein.online/api';
    } else {
      return 'http://127.0.0.1:8000/api';
    }
  }

  @override
  String get authBaseUrl {
    if (kReleaseMode) {
      return '$baseUrl/auth/';
    } else {
      return '$baseUrl/auth/';
    }
  }

  @override
  String get userBaseUrl {
    if (kReleaseMode) {
      return '$baseUrl/user/';
    } else {
      return '$baseUrl/user/';
    }
  }
}
