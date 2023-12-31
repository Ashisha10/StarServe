// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCSq-y7MGE9Yn4Ka3np4fgfuCKmGEMmn54',
    appId: '1:1027052056729:web:169ae5440528e280cbc808',
    messagingSenderId: '1027052056729',
    projectId: 'starserve-893d7',
    authDomain: 'starserve-893d7.firebaseapp.com',
    storageBucket: 'starserve-893d7.appspot.com',
    measurementId: 'G-C311J1KZ5R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgFcL_b4yKtZQ4jmaFvht7tIwtU_we17Q',
    appId: '1:1027052056729:android:f46a757aaf11f29dcbc808',
    messagingSenderId: '1027052056729',
    projectId: 'starserve-893d7',
    storageBucket: 'starserve-893d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9K8iug1ZAWr0zutw0MYp96OluOjLiqKQ',
    appId: '1:1027052056729:ios:b2e110c7d43b7737cbc808',
    messagingSenderId: '1027052056729',
    projectId: 'starserve-893d7',
    storageBucket: 'starserve-893d7.appspot.com',
    iosBundleId: 'com.aquilla.starServe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9K8iug1ZAWr0zutw0MYp96OluOjLiqKQ',
    appId: '1:1027052056729:ios:258c90a955c59f72cbc808',
    messagingSenderId: '1027052056729',
    projectId: 'starserve-893d7',
    storageBucket: 'starserve-893d7.appspot.com',
    iosBundleId: 'com.example.starServe.RunnerTests',
  );
}
