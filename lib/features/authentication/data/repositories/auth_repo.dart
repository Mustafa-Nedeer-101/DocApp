import 'package:dartz/dartz.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/features/authentication/data/datasources/auth_local_datasource.dart';
import 'package:maser_project/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/entities/signup_response_data_entity.dart';
import 'package:maser_project/features/authentication/domain/repositories/auth_repo.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/params/params.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemoteDatasource remoteDatasource;
  final AuthLocalDatasource localDatasource;

  AuthRepoImp({required this.remoteDatasource, required this.localDatasource});

  @override
  Future<Either<Failure, String>> getUserToken() async {
    try {
      final token = await localDatasource.getUserToken();

      return Right(token);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveUserToken(
      {required TokenParams params}) async {
    try {
      final response = await localDatasource.saveUserToken(params: params);
      return Right(response);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<bool> isUserLoggedIn() async {
    try {
      final token = await localDatasource.getUserToken();

      return token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, LoginResponseDataEntity>> login(
      {required LoginParams params}) async {
    try {
      final response = await remoteDatasource.login(params: params);

      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SignupResponseDataEntity>> signup(
      {required SignupParams params}) async {
    try {
      final response = await remoteDatasource.signup(params: params);

      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }
}
