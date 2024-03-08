import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAC31Q1CKIlIZ5ARU_bM1jaWX49FIWzCsY",
            authDomain: "trueproof-flutter.firebaseapp.com",
            projectId: "trueproof-flutter",
            storageBucket: "trueproof-flutter.appspot.com",
            messagingSenderId: "962987794202",
            appId: "1:962987794202:web:4ca8d65b1093cab7ff16a3",
            measurementId: "G-73J3NR3N1G"));
  } else {
    await Firebase.initializeApp();
  }
}
