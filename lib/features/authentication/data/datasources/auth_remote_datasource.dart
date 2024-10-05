import 'package:dio/dio.dart';
import 'package:maser_project/features/authentication/data/models/signup_respose_data_model.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/params/params.dart';
import '../models/login_request_data_model.dart';
import '../models/login_response_data_model.dart';
import '../models/signup_request_data_model.dart';

abstract interface class AuthRemoteDatasource {
  Future<LoginResponseDataModel> login({required LoginParams params});
  Future<SignupResposeDataModel> signup({required SignupParams params});
}

class AuthRemoteDatasourceImp implements AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasourceImp({required this.dio});

  @override
  Future<LoginResponseDataModel> login({required LoginParams params}) async {
    final response = await dio.post(
        "${ApiConstants.apiBaseUrl}${ApiConstants.login}",
        data: LoginRequestDataModel.fromEntity(params.data).toJson());

    try {
      if (response.statusCode == 200) {
        final body = response.data as Map;
        final json = body['data'] as Map<String, dynamic>;
        final model = LoginResponseDataModel.fromJson(json);

        return model;
      } else {
        throw ServerException(message: 'An error at the server side!');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SignupResposeDataModel> signup({required SignupParams params}) async {
    final response = await dio.post(
        "${ApiConstants.apiBaseUrl}${ApiConstants.signup}",
        data: SignupRequestDataModel.fromEntity(params.data).toJson());

    try {
      if (response.statusCode == 200) {
        final body = response.data as Map;
        final json = body['data'] as Map<String, dynamic>;
        final model = SignupResposeDataModel.fromJson(json);

        return model;
      } else {
        throw ServerException(message: 'An error at the server side!');
      }
    } catch (e) {
      rethrow;
    }
  }
}
