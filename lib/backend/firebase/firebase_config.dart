import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBpDd-5h6njiTMBgf8vP12TT7rBEw99mLo",
            authDomain: "quickcard-6f695.firebaseapp.com",
            projectId: "quickcard-6f695",
            storageBucket: "quickcard-6f695.appspot.com",
            messagingSenderId: "168879507080",
            appId: "1:168879507080:web:58eb9485469f8e151b013d",
            measurementId: "G-EYTXZKQMDQ"));
  } else {
    await Firebase.initializeApp();
  }
}
