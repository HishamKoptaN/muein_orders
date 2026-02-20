import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class ProdFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDWUnTGf8bnsgRKdVRO4UNR3mtIm-9Gg1A',
    appId: '1:999622758378:web:10cef246328e869caaec93',
    messagingSenderId: '999622758378',
    projectId: 'muein-d45f8',
    authDomain: 'muein-d45f8.firebaseapp.com',
    storageBucket: 'muein-d45f8.firebasestorage.app',
    measurementId: 'G-M12PBJYGS4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyO0ohcyB4pFRdgDLfnLoAp4L7gojLudQ',
    appId: '1:999622758378:android:a13aa8baf6ea81c8aaec93',
    messagingSenderId: '999622758378',
    projectId: 'muein-d45f8',
    storageBucket: 'muein-d45f8.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFxAHy7sh9RzpOfKFtmQ9jQyM65I_bpBA',
    appId: '1:999622758378:ios:d693a7beb5e0afd6aaec93',
    messagingSenderId: '999622758378',
    projectId: 'muein-d45f8',
    storageBucket: 'muein-d45f8.firebasestorage.app',
    iosClientId:
        '999622758378-589ffc1o5jvmh8t3ftcb5ffj08i7vi0h.apps.googleusercontent.com',
    iosBundleId: 'com.example.mueinorders',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFxAHy7sh9RzpOfKFtmQ9jQyM65I_bpBA',
    appId: '1:999622758378:ios:80882356e235d72eaaec93',
    messagingSenderId: '999622758378',
    projectId: 'muein-d45f8',
    storageBucket: 'muein-d45f8.firebasestorage.app',
    iosClientId:
        '999622758378-p87dbtf77lso5dsjmaun5a9khd13osbg.apps.googleusercontent.com',
    iosBundleId: 'com.muein.app.orders',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDWUnTGf8bnsgRKdVRO4UNR3mtIm-9Gg1A',
    appId: '1:999622758378:web:796c218ff6fa60a3aaec93',
    messagingSenderId: '999622758378',
    projectId: 'muein-d45f8',
    authDomain: 'muein-d45f8.firebaseapp.com',
    storageBucket: 'muein-d45f8.firebasestorage.app',
    measurementId: 'G-E543V8GT4P',
  );
}
