import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/usecases/login_usecase.dart';

import '../../../../../core/dep_injection/dependency_injection.dart';

part 'login_event.dart';
part 'login_state.dart';
part '../login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      // Start Loading
      emit(const LoginState.loading());

      // Login
      final result = await LoginUsecase(repo: getIt<AuthRepoImp>())
          .call(params: event.params);

      // Success or Failure
      result.fold((left) {
        emit(LoginState.failure(error: left));
      }, (right) {
        emit(LoginState.success(data: right));
      });
    });
  }
}
