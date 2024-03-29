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
    apiKey: 'AIzaSyDA34f52xU7y-BmommUzNkTRNJn6GaKUbQ',
    appId: '1:50296254327:web:a51209095b1dbf7c283b72',
    messagingSenderId: '50296254327',
    projectId: 'online-ration-shop',
    authDomain: 'online-ration-shop.firebaseapp.com',
    storageBucket: 'online-ration-shop.appspot.com',
    measurementId: 'G-3NWHY9EC7E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlk1npeUXzqYi9jX8u287Ufp_rlj7m_eM',
    appId: '1:50296254327:android:a75538853fbf143e283b72',
    messagingSenderId: '50296254327',
    projectId: 'online-ration-shop',
    storageBucket: 'online-ration-shop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUVdBEs4EsPjWIU3RgXN2xSRalhs4dYB4',
    appId: '1:50296254327:ios:b169bc22c6605fb2283b72',
    messagingSenderId: '50296254327',
    projectId: 'online-ration-shop',
    storageBucket: 'online-ration-shop.appspot.com',
    iosClientId: '50296254327-jjnupiikbg2mf55g2vg78db4ejqj8gj7.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodDeliveringApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUVdBEs4EsPjWIU3RgXN2xSRalhs4dYB4',
    appId: '1:50296254327:ios:b169bc22c6605fb2283b72',
    messagingSenderId: '50296254327',
    projectId: 'online-ration-shop',
    storageBucket: 'online-ration-shop.appspot.com',
    iosClientId: '50296254327-jjnupiikbg2mf55g2vg78db4ejqj8gj7.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodDeliveringApp',
  );
}
