import 'package:dartz/dartz.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/entities/signup_response_data_entity.dart';
import '../../../../core/errors/failure.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, LoginResponseDataEntity>> login(
      {required LoginParams params});
  Future<Either<Failure, SignupResponseDataEntity>> signup(
      {required SignupParams params});
  Future<bool> isUserLoggedIn();
  Future<Either<Failure, String>> getUserToken();
  Future<Either<Failure, void>> saveUserToken({required TokenParams params});
}
