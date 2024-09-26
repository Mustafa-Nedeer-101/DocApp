import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maser_project/core/dep_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/entities/signup_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/usecases/signup_usecase.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const _Initial()) {
    on<Started>((event, emit) async {
      // Start Loading
      emit(const SignupState.loading());

      // Signup
      final result = await SignupUsecase(repo: getIt<AuthRepoImp>())
          .call(params: event.params);

      // Success or Failure
      result.fold((left) {
        emit(SignupState.failure(error: left));
      }, (right) {
        emit(SignupState.success(data: right));
      });
    });
  }
}
