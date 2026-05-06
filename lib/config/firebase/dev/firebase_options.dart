import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DevFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeTLNT48KM6kwGJSWnU4BSqwM4cMGsv-4',
    appId: '1:448994699498:android:a0aa0a554c88de83c00f93',
    messagingSenderId: '448994699498',
    projectId: 'muein-f36d0',
    storageBucket: 'muein-f36d0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_CRZhhqC9LFJnb_X1-YMc6hJiQvgqHSQ',
    appId: '1:448994699498:ios:3f742f6ff958be32c00f93',
    messagingSenderId: '448994699498',
    projectId: 'muein-f36d0',
    storageBucket: 'muein-f36d0.firebasestorage.app',
    iosClientId:
        '448994699498-888bqhtqan6o4u5d2e3freu8o1nfrfpu.apps.googleusercontent.com',
    iosBundleId: 'com.muein.orders.dev',
  );
}
