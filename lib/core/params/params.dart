import 'package:maser_project/features/authentication/domain/entities/signup_request_data_entity.dart';

import '../../features/authentication/domain/entities/login_request_data_entity.dart';

class SpecialitiesParams {
  late String token;

  SpecialitiesParams();
}

class DoctorsParams {
  late String token;

  DoctorsParams();
}

class LoginParams {
  final LoginRequestDataEntity data;

  LoginParams({required this.data});
}

class SignupParams {
  final SignupRequestDataEntity data;

  SignupParams({required this.data});
}

class TokenParams {
  String token;

  TokenParams({
    required this.token,
  });
}
