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
    apiKey: 'AIzaSyD7ZcG4wo7puPbb8V8FC-fojMtmrhLm5mA',
    appId: '1:479278238188:web:b60b35c505538a9811d8c9',
    messagingSenderId: '479278238188',
    projectId: 'fir-cli-ff6c1',
    authDomain: 'fir-cli-ff6c1.firebaseapp.com',
    storageBucket: 'fir-cli-ff6c1.appspot.com',
    measurementId: 'G-9N4QN9XE50',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx2zv_4et9xBhZAGdl97eSiXl77uFVCj0',
    appId: '1:479278238188:android:159b7da366137d8b11d8c9',
    messagingSenderId: '479278238188',
    projectId: 'fir-cli-ff6c1',
    storageBucket: 'fir-cli-ff6c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJ7UJG_1zEHiET7nIAHRSXsUIvuRGELxM',
    appId: '1:479278238188:ios:e90e65f14250d72011d8c9',
    messagingSenderId: '479278238188',
    projectId: 'fir-cli-ff6c1',
    storageBucket: 'fir-cli-ff6c1.appspot.com',
    iosBundleId: 'com.example.firebaseCli',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJ7UJG_1zEHiET7nIAHRSXsUIvuRGELxM',
    appId: '1:479278238188:ios:e90e65f14250d72011d8c9',
    messagingSenderId: '479278238188',
    projectId: 'fir-cli-ff6c1',
    storageBucket: 'fir-cli-ff6c1.appspot.com',
    iosBundleId: 'com.example.firebaseCli',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7ZcG4wo7puPbb8V8FC-fojMtmrhLm5mA',
    appId: '1:479278238188:web:bdb7d37cc4529d2611d8c9',
    messagingSenderId: '479278238188',
    projectId: 'fir-cli-ff6c1',
    authDomain: 'fir-cli-ff6c1.firebaseapp.com',
    storageBucket: 'fir-cli-ff6c1.appspot.com',
    measurementId: 'G-YG14ESMXNR',
  );
}
