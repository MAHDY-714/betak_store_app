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
        log('the uId when login is ${login.uId}');
        log('the email when login is ${login.email}');
        log('the gender when login is ${login.gender}');
        log('the name when login is ${login.name}');
        log('the phone when login is ${login.phone}');
        log('the imageProfile when login is ${login.imageProfile}');
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
