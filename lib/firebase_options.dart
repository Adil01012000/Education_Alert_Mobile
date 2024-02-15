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
    apiKey: 'AIzaSyDBFWqwVDoi5QZg6W23K0ZvVe1wNt8vdlI',
    appId: '1:569680484566:web:48ab13353bb56df3465177',
    messagingSenderId: '569680484566',
    projectId: 'education-alert-8f6e7',
    authDomain: 'education-alert-8f6e7.firebaseapp.com',
    storageBucket: 'education-alert-8f6e7.appspot.com',
    measurementId: 'G-D8XMK50FML',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxWdMiKC9QobLNlxjayqEXufLbXrqN3fQ',
    appId: '1:569680484566:android:033756377ac2958e465177',
    messagingSenderId: '569680484566',
    projectId: 'education-alert-8f6e7',
    storageBucket: 'education-alert-8f6e7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzN_5pQXLfcmGnArViYNkVnoX584XIEMY',
    appId: '1:569680484566:ios:186bb8d788427fcd465177',
    messagingSenderId: '569680484566',
    projectId: 'education-alert-8f6e7',
    storageBucket: 'education-alert-8f6e7.appspot.com',
    iosBundleId: 'com.example.edualert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzN_5pQXLfcmGnArViYNkVnoX584XIEMY',
    appId: '1:569680484566:ios:186bb8d788427fcd465177',
    messagingSenderId: '569680484566',
    projectId: 'education-alert-8f6e7',
    storageBucket: 'education-alert-8f6e7.appspot.com',
    iosBundleId: 'com.example.edualert',
  );
}
