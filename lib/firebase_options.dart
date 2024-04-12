// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCrlgQ8lCsP1rM9-GocOXnXepbJI_iRQV8',
    appId: '1:77059500963:web:bc0fe3d7574131adfec816',
    messagingSenderId: '77059500963',
    projectId: 'mini-mart-2fb18',
    authDomain: 'mini-mart-2fb18.firebaseapp.com',
    storageBucket: 'mini-mart-2fb18.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBib6ZXqizPe0ZF68_VVSNxQlSzmTXnPo',
    appId: '1:77059500963:android:677fb2497bb50b74fec816',
    messagingSenderId: '77059500963',
    projectId: 'mini-mart-2fb18',
    storageBucket: 'mini-mart-2fb18.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACxVyC0nZ61lteI8QBOs9zZ-ln-aJwVYQ',
    appId: '1:77059500963:ios:c25f45ecb4674b84fec816',
    messagingSenderId: '77059500963',
    projectId: 'mini-mart-2fb18',
    storageBucket: 'mini-mart-2fb18.appspot.com',
    iosBundleId: 'com.example.miniCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrlgQ8lCsP1rM9-GocOXnXepbJI_iRQV8',
    appId: '1:77059500963:web:c1fc26033c4add91fec816',
    messagingSenderId: '77059500963',
    projectId: 'mini-mart-2fb18',
    authDomain: 'mini-mart-2fb18.firebaseapp.com',
    storageBucket: 'mini-mart-2fb18.appspot.com',
  );
}
