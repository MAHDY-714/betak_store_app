import 'dart:developer';

import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/Features/registration/data/repo/registration_repo.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.registrationRepo) : super(LoginInitial());
  RegistrationRepo registrationRepo;

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    var data = await registrationRepo.login(
      email: email,
      password: password,
    );
    data.fold(
      (faaiure) => emit(LoginError(faaiure.errorMessage)),
      (login) {
        emit(LoginSuccess(userInfoModel: login));
        log(login.email.toString());
        log(password);
        log('the uId when register is ${login.uId}');
        log('the login is success');
      },
    );
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
}
