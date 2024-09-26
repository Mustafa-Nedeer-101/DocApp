import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/usecases/save_user_token_usecase.dart';

class LoginUsecase {
  final AuthRepo repo;

  LoginUsecase({required this.repo});

  Future<Either<Failure, LoginResponseDataEntity>> call(
      {required LoginParams params}) async {
    final response = await repo.login(params: params);

    // Call SaveUserTokenUsecase to save token
    response.fold((left) {}, (right) async {
      final saved = await SaveUserTokenUsecase(repo: repo)
          .call(params: TokenParams(token: right.token));

      saved.fold((left) {
        return left;
      }, (right) {});
    });

    return response;
  }
}
