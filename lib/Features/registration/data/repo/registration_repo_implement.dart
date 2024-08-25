import 'dart:developer';

import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/Features/registration/data/repo/registration_repo.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:betak_store_app/core/services/errors/firebase_auth_failures.dart';
import 'package:betak_store_app/core/services/firebase_auth_service.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
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
  Future<Either<Failures, UserInfoModel>> login(
      {required String email, required String password}) async {
    try {
      UserInfoModel userInfoModel;
      var data = await firebaseAuthService.firebaseAuthLogin(
          email: email, password: password);
      userInfoModel = UserInfoModel.formData({
        'email': data.user!.email,
        'password': password,
        'uId': data.user!.uid,
      });
      CacheHelper.saveData(key: 'uId', value: data.user!.uid);
      log(data.user!.uid);
      return right(userInfoModel);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(
            FirebaseAuthFailuresWhenLogin.formFirebaseAuthExceptions(e));
      } else {
        return left(FirebaseAuthFailuresWhenLogin(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, UserInfoModel>> register(
      {required String email,
      required String password,
      required String name,
      required String phone,
      required String gender}) async {
    try {
      UserInfoModel userInfoModel;
      var data = await firebaseAuthService.firebaseAuthRegister(
        email: email,
        password: password,
      );
      firebaseAuthService.createUser(
        email: email,
        uId: data.user!.uid,
        name: name,
        phone: phone,
        gender: gender,
      );
      userInfoModel = UserInfoModel.formData({
        'email': data.user!.email,
        'uId': data.user!.uid,
        'name': name,
        'phone': phone,
        'gender': gender,
      });
      CacheHelper.saveData(key: 'uId', value: data.user!.uid);
      log(data.user!.uid);
      return right(userInfoModel);
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
