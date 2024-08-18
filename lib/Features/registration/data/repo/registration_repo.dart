import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class RegistrationRepo {
  Future<Either<Failures, UserInfoModel>> register({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
  });

  Future<Either<Failures, UserInfoModel>> login({
    required String email,
    required String password,
  });
}
