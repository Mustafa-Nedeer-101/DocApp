import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/specialities/domain/entities/speciality_entity.dart';

abstract interface class SpecialitiesRepo {
  Future<Either<Failure, List<SpecialityEntity>>> getSpecialities(
      {required SpecialitiesParams params});
}
