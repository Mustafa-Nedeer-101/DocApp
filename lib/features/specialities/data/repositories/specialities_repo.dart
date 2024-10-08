import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/error_handler.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/specialities/data/datasources/specialities_remote_datasource.dart';
import 'package:maser_project/features/specialities/domain/entities/speciality_entity.dart';
import 'package:maser_project/features/specialities/domain/repositories/specialities_repo.dart';

class SpecialitiesRepoImp implements SpecialitiesRepo {
  final SpecialitiesRemoteDatasource datasource;

  SpecialitiesRepoImp({required this.datasource});
  @override
  Future<Either<Failure, List<SpecialityEntity>>> getSpecialities(
      {required SpecialitiesParams params}) async {
    try {
      final response = await datasource.getSpecialities(params: params);
      return Right(response);
    } catch (e) {
      return Left(ErrorHandler.exceptionToFailure(e));
    }
  }
}
