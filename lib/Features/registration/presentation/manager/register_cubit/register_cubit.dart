import 'dart:developer';

import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/Features/registration/data/repo/registration_repo.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registrationRepo) : super(RegisterInitial());
  RegistrationRepo registrationRepo;
  Future<void> registerUser({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
  }) async {
    emit(RegisterLoading());
    var data = await registrationRepo.register(
      email: email,
      password: password,
      name: name,
      phone: phone,
      gender: gender,
    );
    data.fold(
      (faaiure) => emit(RegisterError(faaiure.errorMessage)),
      (register) {
        emit(RegisterSuccess(userInfoModel: register));
        log('the uId when register is ${register.uId}');
        log('the register is success');
      },
    );
  }

  Future<void> signOut(context) async {
    await FirebaseAuth.instance.signOut().then((value) {
      CacheHelper.removeData(key: 'uId').then((value) {
        GoRouter.of(context).pushReplacement(AppRouter.kLogOutFromProfile);
      });
    });
  }

  bool visIconSate = true;
  void changeVisIcon() {
    visIconSate = !visIconSate;
    if (visIconSate == true) {
      emit(VisIconChangeVisOnSate());
    } else {
      emit(VisIconChangeVisOffSate());
    }

    log('visIconSate = $visIconSate');
  }

  bool genderSate = true;
  bool selectGenderType(int value) {
    genderSate = !genderSate;
    if (genderSate == true) {
      value = 0;
      emit(GenderTypeMaleSate());
    } else if (genderSate == false) {
      value = 1;
      emit(GenderTypeFemaleSate());
    }
    log('genderSate = $genderSate');

    return genderSate;
  }
  // FontAwesomeIcons.faceGrinBeam => vis on
// FontAwesomeIcons.faceGrinWide => vis off
}
