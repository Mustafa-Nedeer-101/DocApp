import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/exceptions.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/features/doctors/data/datasources/doctors_remote_datasource.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:maser_project/features/doctors/domain/repositories/doctors_repo.dart';
import '../../../../core/params/params.dart';

class DoctorsRepoImp implements DoctorsRepo {
  final DoctorsRemoteDatasource datasource;

  DoctorsRepoImp({required this.datasource});
  @override
  Future<Either<Failure, List<DoctorEntity>>> getDoctors(
      {required DoctorsParams params}) async {
    try {
      final response = await datasource.getDoctors(params: params);

      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }
}
