import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCsS-EIJYbGpu5JOiog36Gf-tM0UKV_TXI",
            authDomain: "campfyr-43xn03.firebaseapp.com",
            projectId: "campfyr-43xn03",
            storageBucket: "campfyr-43xn03.appspot.com",
            messagingSenderId: "8501876540",
            appId: "1:8501876540:web:761808b1075bd81be4b039"));
  } else {
    await Firebase.initializeApp();
  }
}
