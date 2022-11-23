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
    apiKey: 'AIzaSyAhUF3vxizarKCFFVc_fRMD6pHyG8FXG5E',
    appId: '1:500622967926:android:e6c7bd3370649598f78b57',
    messagingSenderId: '500622967926',
    projectId: 'day-20-firebase',
    storageBucket: 'day-20-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCw_VAA4jZSau5N2ALNbjd9qx2W26r9zYw',
    appId: '1:500622967926:ios:5a490acd816c0a09f78b57',
    messagingSenderId: '500622967926',
    projectId: 'day-20-firebase',
    storageBucket: 'day-20-firebase.appspot.com',
    androidClientId: '500622967926-ote4b03s8rdjevv9kemsd15uph8okvpp.apps.googleusercontent.com',
    iosClientId: '500622967926-dc2u8gkoketq0iepb50mah48e4p04l4d.apps.googleusercontent.com',
    iosBundleId: 'com.example.day20Firebase',
  );
}