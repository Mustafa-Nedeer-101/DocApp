import 'package:maser_project/features/authentication/domain/entities/signup_request_data_entity.dart';

class SignupRequestDataModel extends SignupRequestDataEntity {
  SignupRequestDataModel(
      {required super.name,
      required super.email,
      required super.phone,
      required super.gender,
      required super.password,
      required super.passwordConfirmation});

  factory SignupRequestDataModel.fromEntity(SignupRequestDataEntity entity) {
    return SignupRequestDataModel(
        name: entity.name,
        email: entity.email,
        phone: entity.phone,
        gender: entity.gender,
        password: entity.password,
        passwordConfirmation: entity.passwordConfirmation);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
      'gender': gender,
      'password': password,
      'password_confirmation': passwordConfirmation
    };
  }
}
