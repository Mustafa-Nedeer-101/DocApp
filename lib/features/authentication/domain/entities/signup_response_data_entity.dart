class SignupResponseDataEntity {
  final String name;
  final String token;
  final String email;
  final String password;
  final String gender;
  final String phone;

  SignupResponseDataEntity(
      {required this.name,
      required this.token,
      required this.email,
      required this.password,
      required this.gender,
      required this.phone});
}
