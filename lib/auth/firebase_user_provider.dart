import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class QuiCkCaRdFirebaseUser {
  QuiCkCaRdFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QuiCkCaRdFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuiCkCaRdFirebaseUser> quiCkCaRdFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QuiCkCaRdFirebaseUser>(
      (user) {
        currentUser = QuiCkCaRdFirebaseUser(user);
        if (!kIsWeb) {
          FirebaseCrashlytics.instance.setUserIdentifier(user?.uid ?? '');
        }
        return currentUser!;
      },
    );
