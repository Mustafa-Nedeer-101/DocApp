import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/domain/repositories/auth_repo.dart';

class SaveUserTokenUsecase {
  final AuthRepo repo;

  SaveUserTokenUsecase({required this.repo});

  Future<Either<Failure, void>> call({required TokenParams params}) {
    return repo.saveUserToken(params: params);
  }
}
