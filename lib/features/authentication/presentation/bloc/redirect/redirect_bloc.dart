import 'package:bloc/bloc.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/usecases/is_user_logged_usecase.dart';

part 'redirect_event.dart';
part 'redirect_state.dart';

class RedirectBloc extends Bloc<RedirectEvent, RedirectState> {
  RedirectBloc() : super(RedirectInitialState()) {
    on<StartRedirectEvent>((event, emit) async {
      // Call IsUserLoggedIn usecase
      final response =
          await IsUserLoggedInUsecase(repo: getIt<AuthRepoImp>()).call();

      if (response) {
        emit(RedirectAuthenticatedState());
      } else {
        emit(RedirectUnauthenticatedState());
      }
    });
  }
}
