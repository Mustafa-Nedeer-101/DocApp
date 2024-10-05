import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/usecases/is_user_logged_usecase.dart';

part 'redirect_event.dart';
part 'redirect_state.dart';
part 'redirect_bloc.freezed.dart';

class RedirectBloc extends Bloc<RedirectEvent, RedirectState> {
  RedirectBloc() : super(const _Initial()) {
    on<Redirect>((event, emit) async {
      // Call IsUserLoggedIn usecase
      final response =
          await IsUserLoggedInUsecase(repo: getIt<AuthRepoImp>()).call();

      if (response) {
        emit(const RedirectState.authenticated());
      } else {
        emit(const RedirectState.unauthenticated());
      }
    });
  }
}
