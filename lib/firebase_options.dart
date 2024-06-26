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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAYiwXP2u99lenNAogY4adAo3wGzO-BMgg',
    appId: '1:286521879594:web:8e27ed32d4ba83c1bba753',
    messagingSenderId: '286521879594',
    projectId: 'play-store-flutter',
    authDomain: 'play-store-flutter.firebaseapp.com',
    storageBucket: 'play-store-flutter.appspot.com',
    measurementId: 'G-4D1JS9J046',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQSd5Y3X4hp58MbEoif3gXVOLARAVzkhk',
    appId: '1:286521879594:android:f091e4ca404cfe7fbba753',
    messagingSenderId: '286521879594',
    projectId: 'play-store-flutter',
    storageBucket: 'play-store-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD13_u6Za2RqXGDuDFs32O35oHcN8dNaXk',
    appId: '1:286521879594:ios:59029c48f13a06b3bba753',
    messagingSenderId: '286521879594',
    projectId: 'play-store-flutter',
    storageBucket: 'play-store-flutter.appspot.com',
    iosBundleId: 'com.example.untitled',
  );
}
