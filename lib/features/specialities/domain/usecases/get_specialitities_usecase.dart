import 'package:dartz/dartz.dart';
import 'package:maser_project/core/dep_injection/dependency_injection.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:maser_project/features/specialities/domain/repositories/specialities_repo.dart';
import '../../../../core/errors/failure.dart';
import '../entities/speciality_entity.dart';

class GetSpecialititiesUsecase {
  final SpecialitiesRepo repo;

  GetSpecialititiesUsecase({required this.repo});

  Future<Either<Failure, List<SpecialityEntity>>> call(
      {required SpecialitiesParams params}) async {
    // Call GetUserTokenUsecase usecase
    final token = await GetUserTokenUsecase(repo: getIt<AuthRepoImp>()).call();

    // Return Error or
    token.fold((left) {
      return left;
    }, (right) {
      params.token = right;
    });

    return await repo.getSpecialities(params: params);
  }
}
