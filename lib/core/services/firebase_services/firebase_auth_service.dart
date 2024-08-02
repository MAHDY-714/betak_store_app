import 'package:betak_store_app/core/services/errors/firebase_auth_failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<String?> firebaseAuthRegister({
    required String email,
    required String name,
    required String phone,
    required String password,
    required bool gender,
  }) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return 'success Register a new account';
    } catch (e) {
      if (e is FirebaseAuthException) {
        FirebaseAuthFailuresWhenRegister.formFirebaseAuthExceptions(e);
        return e.code;
      } else {
        return e.toString();
      }
    }
  }

  Future<String> firebaseAuthLogin({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return 'success Login an account';
    } catch (e) {
      if (e is FirebaseAuthException) {
        FirebaseAuthFailuresWhenLogin.formFirebaseAuthExceptions(e);
        return e.code;
      } else {
        return e.toString();
      }
    }
  }
}

/*

email-already-in-use
- An account already exists with the same name as the entered email.
invalid-email
-email address is invalid.
operation-not-allowed
-email/password accounts are not enabled. Enable email/password accounts in the.
weak-password
-password is weak.
 */