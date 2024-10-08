import 'package:maser_project/core/constants/shared_pref_keys.dart';
import 'package:maser_project/core/helpers/local_storage.dart';
import 'package:maser_project/core/params/params.dart';

abstract interface class AuthLocalDatasource {
  Future<String> getUserToken();

  Future<void> saveUserToken({required TokenParams params});
}

class AuthLocalDatasourceImp implements AuthLocalDatasource {
  LocalStorage localStorage;

  AuthLocalDatasourceImp({
    required this.localStorage,
  });

  @override
  Future<String> getUserToken() async {
    try {
      final result = localStorage.fetchString(SharedPrefKeys.userToken);

      return await result ?? "";
    } catch (e) {
      throw "Couldn't get your information!";
    }
  }

  @override
  Future<void> saveUserToken({required TokenParams params}) async {
    try {
      return await localStorage.storeString(
          SharedPrefKeys.userToken, params.token);
    } catch (e) {
      throw "Couldn't save your information!";
    }
  }
}
