class LogicException implements Exception {
  final String message;

  LogicException({required this.message});
}

class ServerException implements Exception {
  final String message;
  ServerException({required this.message});
}

class CacheException implements Exception {
  final String message;
  CacheException({required this.message});
}
