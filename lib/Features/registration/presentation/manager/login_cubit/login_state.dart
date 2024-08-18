part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final UserInfoModel? userInfoModel;

  const LoginSuccess({required this.userInfoModel});
}

class LoginError extends LoginState {
  final String errorMessage;

  const LoginError(this.errorMessage);
}

class VisIconChangeVisOnSate extends LoginState {}

class VisIconChangeVisOffSate extends LoginState {}
