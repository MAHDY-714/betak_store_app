import 'dart:developer';

import 'package:betak_store_app/Features/registration/data/model/user_info_model.dart';
import 'package:betak_store_app/Features/registration/data/repo/registration_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        log('the register is success');
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
  // FontAwesomeIcons.faceGrinBeam => vis on
// FontAwesomeIcons.faceGrinWide => vis off
}
