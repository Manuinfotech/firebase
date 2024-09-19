import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD1z2a4DuFl0ueNxEfAVjhn3k2Vv1f4_7Q",
            authDomain: "fir-crud-e4bdf.firebaseapp.com",
            projectId: "fir-crud-e4bdf",
            storageBucket: "fir-crud-e4bdf.appspot.com",
            messagingSenderId: "782708013074",
            appId: "1:782708013074:web:e408315ff0c92f4c53c0cb",
            measurementId: "G-KNNN0RZKTL"));
  } else {
    await Firebase.initializeApp();
  }
}
