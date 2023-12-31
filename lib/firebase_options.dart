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
    apiKey: 'AIzaSyBe-Nn5r8N9QIOLg8yzuJBY7KlRIHz_WME',
    appId: '1:645430681630:web:3ef34d92bde7a6ef5dce0f',
    messagingSenderId: '645430681630',
    projectId: 'chatscolar-app',
    authDomain: 'chatscolar-app.firebaseapp.com',
    storageBucket: 'chatscolar-app.appspot.com',
    measurementId: 'G-0625EGE4BM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP3cmbsXYxfpwCviAkwylRi6bKhqPxOzg',
    appId: '1:645430681630:android:1dffde41f5bc23ec5dce0f',
    messagingSenderId: '645430681630',
    projectId: 'chatscolar-app',
    storageBucket: 'chatscolar-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAa8Myvzs1rnAen783r8Izunim58yHUfuA',
    appId: '1:645430681630:ios:c37bd8ddf0ee775d5dce0f',
    messagingSenderId: '645430681630',
    projectId: 'chatscolar-app',
    storageBucket: 'chatscolar-app.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}
