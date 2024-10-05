part of 'login_bloc.dart';

sealed class LoginEvent {}

final class UserLogin extends LoginEvent {
  LoginParams params;
  UserLogin({required this.params});
}
