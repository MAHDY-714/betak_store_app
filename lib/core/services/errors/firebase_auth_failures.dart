import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthFailuresWhenRegister extends Failures {
  FirebaseAuthFailuresWhenRegister(super.errorMessage);
  factory FirebaseAuthFailuresWhenRegister.formFirebaseAuthExceptions(
      FirebaseAuthException firebaseAuthException) {
    switch (firebaseAuthException.code) {
      case 'email-already-in-use':
        return FirebaseAuthFailuresWhenRegister(
            'An account already exists with the same name as the entered email');
      case 'invalid-email':
        return FirebaseAuthFailuresWhenRegister('email address is invalid');
      case 'operation-not-allowed':
        return FirebaseAuthFailuresWhenRegister(
            'email/password accounts are not enabled. Enable email/password accounts in the');
      default:
        return FirebaseAuthFailuresWhenRegister('password is weak');
    }
  }
}

class FirebaseAuthFailuresWhenLogin extends Failures {
  FirebaseAuthFailuresWhenLogin(super.errorMessage);

  factory FirebaseAuthFailuresWhenLogin.formFirebaseAuthExceptions(
      FirebaseAuthException firebaseAuthException) {
    switch (firebaseAuthException.code) {
      case 'wrong-password':
        return FirebaseAuthFailuresWhenLogin('wrong-password');
      case 'invalid-email':
        return FirebaseAuthFailuresWhenLogin('the email address is not valid');
      case 'user-not-found':
        return FirebaseAuthFailuresWhenLogin(
            'there is no user corresponding to the given email');
      default:
        return FirebaseAuthFailuresWhenLogin(
            'the user corresponding to the given email has been disabled');
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
