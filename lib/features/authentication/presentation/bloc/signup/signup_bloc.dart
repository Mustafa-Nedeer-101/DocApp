import 'package:bloc/bloc.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/entities/signup_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/usecases/signup_usecase.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitialState()) {
    on<UserSignup>((event, emit) async {
      // Start Loading
      emit(SignupLoadingState());

      // Signup
      final result = await SignupUsecase(repo: getIt<AuthRepoImp>())
          .call(params: event.params);

      // Success or Failure
      result.fold((left) {
        emit(SignupFailureState(error: left));
      }, (right) {
        emit(SignupSuccessState(data: right));
      });
    });
  }
}
