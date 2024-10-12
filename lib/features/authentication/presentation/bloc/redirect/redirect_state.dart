part of 'redirect_bloc.dart';

sealed class RedirectState {}

final class RedirectInitialState extends RedirectState {}

final class RedirectAuthenticatedState extends RedirectState {}

final class RedirectUnauthenticatedState extends RedirectState {}
