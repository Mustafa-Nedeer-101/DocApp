abstract class Failure {
  final String errorHeader;
  final String errorMessage;
  const Failure({required this.errorHeader, required this.errorMessage});
}

class UnknownFailure extends Failure {
  UnknownFailure(
      {super.errorHeader = 'Unknown Failure', required super.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure(
      {super.errorHeader = 'Server Failure', required super.errorMessage});
}

class CacheFailure extends Failure {
  CacheFailure(
      {super.errorHeader = 'Cache Failure', required super.errorMessage});
}

class FirebaseFailure extends Failure {
  FirebaseFailure(
      {super.errorHeader = 'Firebase Failure', required super.errorMessage});
}

class FormatFailure extends Failure {
  FormatFailure(
      {super.errorHeader = 'Format Failure', required super.errorMessage});
}

class PlatformFailure extends Failure {
  PlatformFailure(
      {super.errorHeader = 'Platform Failure', required super.errorMessage});
}
