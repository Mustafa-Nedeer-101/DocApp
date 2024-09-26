part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _SignupLoading;
  const factory SignupState.success({required SignupResponseDataEntity data}) =
      _SignupSuccess;
  const factory SignupState.failure({required Failure error}) = _SignupFailure;
}
