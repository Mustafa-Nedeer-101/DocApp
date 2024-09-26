part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _LoginLoading;
  const factory LoginState.success({required LoginResponseDataEntity data}) =
      _LoginSuccess;
  const factory LoginState.failure({required Failure error}) = _LoginFailure;
}
