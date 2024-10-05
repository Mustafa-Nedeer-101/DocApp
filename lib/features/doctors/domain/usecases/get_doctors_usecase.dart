import 'package:dartz/dartz.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:maser_project/features/doctors/domain/repositories/doctors_repo.dart';

class GetDoctorsUsecase {
  final DoctorsRepo repo;

  GetDoctorsUsecase({required this.repo});

  Future<Either<Failure, List<DoctorEntity>>> call(
      {required DoctorsParams params}) async {
    // Call GetUserTokenUsecase usecase
    final token = await GetUserTokenUsecase(repo: getIt<AuthRepoImp>()).call();

    // Return Error or
    token.fold((left) {
      return left;
    }, (right) {
      params.token = right;
    });

    return await repo.getDoctors(params: params);
  }
}
