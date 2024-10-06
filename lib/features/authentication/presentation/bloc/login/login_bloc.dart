import 'package:bloc/bloc.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/usecases/login_usecase.dart';

import '../../../../../core/dependency_injection/dependency_injection.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<UserLogin>((event, emit) async {
      // Start Loading
      emit(LoginLoadingState());

      // Login
      final result = await LoginUsecase(repo: getIt<AuthRepoImp>())
          .call(params: event.params);

      // Success or Failure
      result.fold((left) {
        emit(LoginFailureState(error: left));
      }, (right) {
        emit(LoginSuccessState(data: right));
      });
    });
  }
}
