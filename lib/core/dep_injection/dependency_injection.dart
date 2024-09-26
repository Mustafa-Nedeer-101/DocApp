import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:maser_project/core/helpers/local_storage.dart';
import 'package:maser_project/features/authentication/data/datasources/auth_local_datasource.dart';
import 'package:maser_project/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:maser_project/features/authentication/data/repositories/auth_repo.dart';
import 'package:maser_project/features/authentication/presentation/bloc/redirect/redirect_bloc.dart';
import 'package:maser_project/features/authentication/presentation/bloc/signup/signup_bloc.dart';
import 'package:maser_project/features/doctors/bloc/doctors_bloc.dart';
import 'package:maser_project/features/doctors/data/datasources/doctors_remote_datasource.dart';
import 'package:maser_project/features/doctors/data/repositories/doctors_repo.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:maser_project/features/specialities/data/repositories/specialities_repo.dart';
import 'package:maser_project/features/specialities/bloc/specialities_bloc.dart';
import '../../features/specialities/data/datasources/specialities_remote_datasource.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupDependencyInjecion() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  FlutterSecureStorage storage = const FlutterSecureStorage();

  // Register Storage instance
  getIt.registerSingleton<FlutterSecureStorage>(storage);

  // Register LocalStorageHelper
  getIt.registerSingleton<FlutterSecureStorageHelper>(
    FlutterSecureStorageHelper(storage: getIt<FlutterSecureStorage>()),
  );

  // Auth Datasources
  getIt.registerLazySingleton<AuthRemoteDatasourceImp>(
      () => AuthRemoteDatasourceImp(dio: dio));
  getIt.registerLazySingleton<AuthLocalDatasourceImp>(() =>
      AuthLocalDatasourceImp(
          localStorage: getIt<FlutterSecureStorageHelper>()));

  // Auth Repo
  getIt.registerLazySingleton<AuthRepoImp>(() => AuthRepoImp(
      remoteDatasource: getIt<AuthRemoteDatasourceImp>(),
      localDatasource: getIt<AuthLocalDatasourceImp>()));

  // Auth Blocs
  getIt.registerFactory<RedirectBloc>(() => RedirectBloc());
  getIt.registerFactory<LoginBloc>(() => LoginBloc());
  getIt.registerFactory<SignupBloc>(() => SignupBloc());

  // Home
  getIt.registerLazySingleton<SpecialitiesRemoteDatasourceImp>(
      () => SpecialitiesRemoteDatasourceImp(dio: dio));
  getIt.registerLazySingleton(() => SpecialitiesRepoImp(
      datasource: getIt<SpecialitiesRemoteDatasourceImp>()));
  getIt.registerFactory(() => SpecialitiesBloc());

  getIt.registerLazySingleton<DoctorsRemoteDatasourceImp>(
      () => DoctorsRemoteDatasourceImp(dio: dio));
  getIt.registerLazySingleton<DoctorsRepoImp>(
      () => DoctorsRepoImp(datasource: getIt<DoctorsRemoteDatasourceImp>()));
  getIt.registerFactory(() => DoctorsBloc());
}
