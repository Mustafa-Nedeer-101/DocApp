import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/features/authentication/domain/repositories/auth_repo.dart';

class GetUserTokenUsecase {
  final AuthRepo repo;

  GetUserTokenUsecase({required this.repo});

  Future<Either<Failure, String>> call() {
    return repo.getUserToken();
  }
}
