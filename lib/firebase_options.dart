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
    apiKey: 'AIzaSyB672hR2Qx2Ru3hKoYj-jPJbBMK1sBS9cg',
    appId: '1:898344634206:web:610dfeec6dbd4ee45231cf',
    messagingSenderId: '898344634206',
    projectId: 'cheese-staging',
    authDomain: 'cheese-staging.firebaseapp.com',
    storageBucket: 'cheese-staging.appspot.com',
    measurementId: 'G-FE5NC75X7L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwSkJBrXqFKyZNXAE3tFNXMpieFXIgteE',
    appId: '1:898344634206:android:b319ba2b8de6dd545231cf',
    messagingSenderId: '898344634206',
    projectId: 'cheese-staging',
    storageBucket: 'cheese-staging.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgvfZy00ZvlfQavwcuma8_NgQ4vrVkrEE',
    appId: '1:898344634206:ios:7b3f7d41145e6b6b5231cf',
    messagingSenderId: '898344634206',
    projectId: 'cheese-staging',
    storageBucket: 'cheese-staging.appspot.com',
    iosClientId: '898344634206-11ioidkr25cj2n77uk1dub2jt82v70do.apps.googleusercontent.com',
    iosBundleId: 'com.example.cheeseClient',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgvfZy00ZvlfQavwcuma8_NgQ4vrVkrEE',
    appId: '1:898344634206:ios:be0db92f17c5470b5231cf',
    messagingSenderId: '898344634206',
    projectId: 'cheese-staging',
    storageBucket: 'cheese-staging.appspot.com',
    iosClientId: '898344634206-2k443ji8p42dvph2amsf4coco4hen5j0.apps.googleusercontent.com',
    iosBundleId: 'com.example.cheeseClient.RunnerTests',
  );
}
