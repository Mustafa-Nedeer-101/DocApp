part of 'redirect_bloc.dart';

@freezed
class RedirectState with _$RedirectState {
  const factory RedirectState.initial() = _Initial;
  const factory RedirectState.authenticated() = Authenticated;
  const factory RedirectState.unauthenticated() = Unauthenticated;
}
