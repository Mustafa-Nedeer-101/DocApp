import 'package:maser_project/features/authentication/domain/entities/login_request_data_entity.dart';

class LoginRequestDataModel extends LoginRequestDataEntity {
  LoginRequestDataModel({required super.password, required super.email});

  factory LoginRequestDataModel.fromEntity(LoginRequestDataEntity entity) {
    return LoginRequestDataModel(
        email: entity.email, password: entity.password);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'email': email, 'password': password};
  }
}
