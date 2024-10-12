part of 'redirect_bloc.dart';

sealed class RedirectEvent {}

final class RedirectInitialEvent extends RedirectEvent {}

final class StartRedirectEvent extends RedirectEvent {}
