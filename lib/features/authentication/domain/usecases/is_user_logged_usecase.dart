import 'package:maser_project/features/authentication/domain/repositories/auth_repo.dart';

class IsUserLoggedInUsecase {
  final AuthRepo repo;

  IsUserLoggedInUsecase({required this.repo});

  Future<bool> call() {
    return repo.isUserLoggedIn();
  }
}
