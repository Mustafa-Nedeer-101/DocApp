import 'package:maser_project/features/authentication/domain/entities/signup_response_data_entity.dart';

class SignupResposeDataModel extends SignupResponseDataEntity {
  SignupResposeDataModel(
      {required super.name,
      required super.token,
      required super.email,
      required super.password,
      required super.gender,
      required super.phone});

  factory SignupResposeDataModel.fromJson(Map<String, dynamic> json) {
    return SignupResposeDataModel(
        name: json['name'] ?? '',
        token: json['token'] ?? '',
        email: json['email'] ?? '',
        password: json['password'] ?? '',
        gender: json['gender'] ?? '',
        phone: json['phone'] ?? '');
  }
}
