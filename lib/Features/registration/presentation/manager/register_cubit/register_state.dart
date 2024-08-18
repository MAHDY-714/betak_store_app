part of 'register_cubit.dart';

sealed class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final UserInfoModel? userInfoModel;

  const RegisterSuccess({required this.userInfoModel});
}

class RegisterError extends RegisterState {
  final String errorMessage;

  const RegisterError(this.errorMessage);
}

class VisIconChangeVisOnSate extends RegisterState {}

class VisIconChangeVisOffSate extends RegisterState {}
