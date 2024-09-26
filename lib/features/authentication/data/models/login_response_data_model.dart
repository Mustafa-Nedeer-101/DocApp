import 'package:maser_project/features/authentication/domain/entities/login_response_data_entity.dart';

class LoginResponseDataModel extends LoginResponseDataEntity {
  LoginResponseDataModel({required super.token, required super.username});

  factory LoginResponseDataModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseDataModel(
        token: json['token'] ?? '', username: json['username'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'token': token, 'username': username};
  }
}
