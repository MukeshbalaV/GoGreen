import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCR47EvlrpEtRdf73HfwkWS6Tsz_vefhqU",
            authDomain: "gogreen-13109.firebaseapp.com",
            projectId: "gogreen-13109",
            storageBucket: "gogreen-13109.appspot.com",
            messagingSenderId: "324355466000",
            appId: "1:324355466000:web:0d191c5c6ccd2a2340fb95",
            measurementId: "G-NQ1G9LSHPY"));
  } else {
    await Firebase.initializeApp();
  }
}
