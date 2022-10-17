//? 1- Android package name
// android\app\src\main\AndroidManifest.xml

//? 2- Download google-servicees.json
// paste in android\app\

//? 3- copy this classpath to dependencies
// android\build.gradle
//! 'com.google.gms:google-services:4.3.13'

//? 4- copy these to plugins and dependencies 
// android\app\build.gradle
//* plugins
//! apply plugin: 'com.google.gms.google-services'
//* dependencies
//! implementation platform('com.google.firebase:firebase-bom:31.0.0'

//? 5- multidex
// android\app\build.gradle
//*android {
    //*defaultConfig {
      //* minSdkVersion 16
      //* targetSdkVersion 28
      //! multiDexEnabled true
   // }
//}
//* dependencies
//! implementation 'com.android.support:multidex:1.0.3'

//? 6- Initialization
// in Terminal:
//! flutter pub add firebase_core
// in main.dart
//! import 'package:firebase_core/firebase_core.dart';

//! void main() async {
//!  WidgetsFlutterBinding.ensureInitialized();
//!  // ignore: prefer_const_constructors
//!  await Firebase.initializeApp();
//!  runApp(const MyApp());
//!  }


//* Error
// flutter channel master
// flutter upgrade