import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RegistrationRepo {
  Future<Either<Failures, UserCredential>> register({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
  });
  // Future<Either<Failures, UserInfoModel>> createUser({
  //   required String email,
  //   required String password,
  //   required String uId,
  //   required String name,
  //   required String phone,
  //   required String gender,
  //   required String imageProfile,
  // });
  Future<Either<Failures, UserCredential>> login({
    required String email,
    required String password,
  });
}
