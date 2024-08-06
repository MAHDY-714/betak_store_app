import 'dart:developer';

import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<UserCredential> firebaseAuthRegister({
    required String email,
    required String password,
  }) async {
    var register = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return register;
  }

  Future<UserInfoModel> createUser({
    required String email,
    required String uId,
    required String name,
    required String phone,
    required String gender,
    String? imageProfile,
  }) async {
    UserInfoModel userInfoModel = UserInfoModel(
      email: email,
      uId: uId,
      name: name,
      phone: phone,
      gender: gender,
      imageProfile: gender == 'male'
          ? AssetsImages.avatarMan
          : gender == 'female'
              ? AssetsImages.avatarWoman
              : AssetsImages.avatarMan,
    );
    firebaseFirestore
        .collection('customers')
        .doc(uId)
        .set(userInfoModel.userMapFirestore())
        .then((value) {
      log('this is email :- ${userInfoModel.email}');
      log('this is uId :- ${userInfoModel.uId}');
      log('this is name :- ${userInfoModel.name}');
      log('this is phone :- ${userInfoModel.phone}');
      log('this is gender :- ${userInfoModel.gender}');
    });
    return userInfoModel;
  }

  Future<UserCredential> firebaseAuthLogin({
    required String email,
    required String password,
  }) async {
    var login = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return login;
  }
}
