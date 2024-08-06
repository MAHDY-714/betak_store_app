import 'package:betak_store_app/Features/registration/data/repo/registration_repo.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:betak_store_app/core/services/errors/firebase_auth_failures.dart';
import 'package:betak_store_app/core/services/firebase_services/firebase_auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationRepoImaplement implements RegistrationRepo {
  final FirebaseAuthService firebaseAuthService;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CollectionReference usersRefranceFirestore =
      FirebaseFirestore.instance.collection('customers');

  RegistrationRepoImaplement(this.firebaseAuthService);
  @override
  Future<Either<Failures, UserCredential>> login(
      {required String email, required String password}) async {
    try {
      var data = await firebaseAuthService.firebaseAuthLogin(
          email: email, password: password);
      return right(data);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
            FirebaseAuthFailuresWhenRegister.formFirebaseAuthExceptions(e));
      } else {
        return left(FirebaseAuthFailuresWhenRegister(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, UserCredential>> register(
      {required String email,
      required String password,
      required String name,
      required String phone,
      required String gender}) async {
    try {
      var data = await firebaseAuthService
          .firebaseAuthRegister(
        email: email,
        password: password,
      )
          .then((value) {
        firebaseAuthService.createUser(
          email: email,
          uId: value.user!.uid,
          name: name,
          phone: phone,
          gender: gender,
        );
      });
      return right(data);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
            FirebaseAuthFailuresWhenRegister.formFirebaseAuthExceptions(e));
      } else {
        return left(FirebaseAuthFailuresWhenRegister(e.toString()));
      }
    }
  }
}
