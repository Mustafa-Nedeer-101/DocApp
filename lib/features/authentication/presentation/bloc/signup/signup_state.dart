part of 'signup_bloc.dart';

sealed class SignupState {}

final class SignupInitialState extends SignupState {}

final class SignupLoadingState extends SignupState {}

final class SignupSuccessState extends SignupState {
  final SignupResponseDataEntity data;

  SignupSuccessState({required this.data});
}

final class SignupFailureState extends SignupState {
  final Failure error;

  SignupFailureState({required this.error});
}
