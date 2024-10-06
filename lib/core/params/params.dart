// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:maser_project/core/constants/eums.dart';
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

class SortDoctorsParams {
  SearchBy searyBy;

  SortDoctorsParams({
    required this.searyBy,
  });
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
