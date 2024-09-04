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
    apiKey: 'AIzaSyCKvE1mDI6V9Kmqln12sbVAUx_yq38BGBE',
    appId: '1:236531396304:web:427198a35f93ace46978d5',
    messagingSenderId: '236531396304',
    projectId: 'womensafety-949b1',
    authDomain: 'womensafety-949b1.firebaseapp.com',
    storageBucket: 'womensafety-949b1.appspot.com',
    measurementId: 'G-DX82BQ79BE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAjzSN940tjZOzCtGuzEAfJaONW_uVk0E',
    appId: '1:236531396304:android:1181f18e316a8a656978d5',
    messagingSenderId: '236531396304',
    projectId: 'womensafety-949b1',
    storageBucket: 'womensafety-949b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACdKBczajjV9tdQBvQ24jet5V4eG_K4KQ',
    appId: '1:236531396304:ios:60fb7a6f887dc4af6978d5',
    messagingSenderId: '236531396304',
    projectId: 'womensafety-949b1',
    storageBucket: 'womensafety-949b1.appspot.com',
    iosBundleId: 'com.example.womensafety',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACdKBczajjV9tdQBvQ24jet5V4eG_K4KQ',
    appId: '1:236531396304:ios:60fb7a6f887dc4af6978d5',
    messagingSenderId: '236531396304',
    projectId: 'womensafety-949b1',
    storageBucket: 'womensafety-949b1.appspot.com',
    iosBundleId: 'com.example.womensafety',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKvE1mDI6V9Kmqln12sbVAUx_yq38BGBE',
    appId: '1:236531396304:web:b5b1439374164aa26978d5',
    messagingSenderId: '236531396304',
    projectId: 'womensafety-949b1',
    authDomain: 'womensafety-949b1.firebaseapp.com',
    storageBucket: 'womensafety-949b1.appspot.com',
    measurementId: 'G-CGKPT95D8Y',
  );
}
