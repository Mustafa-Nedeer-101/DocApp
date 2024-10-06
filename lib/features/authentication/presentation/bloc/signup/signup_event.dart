part of 'signup_bloc.dart';

sealed class SignupEvent {}

final class UserSignup extends SignupEvent {
  final SignupParams params;

  UserSignup({required this.params});
}
