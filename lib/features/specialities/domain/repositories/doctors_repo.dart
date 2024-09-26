import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';

import '../entities/doctor_entity.dart';

abstract interface class DoctorsRepo {
  Future<Either<Failure, List<DoctorEntity>>> getDoctors(
      {required DoctorsParams params});
}
