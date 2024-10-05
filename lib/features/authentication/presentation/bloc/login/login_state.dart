part of 'login_bloc.dart';

sealed class LoginState {}

final class LoginInitialState extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginSuccessState extends LoginState {
  final LoginResponseDataEntity data;

  LoginSuccessState({required this.data});
}

final class LoginFailureState extends LoginState {
  final Failure error;

  LoginFailureState({required this.error});
}
