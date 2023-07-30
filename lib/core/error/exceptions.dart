class ServerException implements Exception {

  ServerException({required this.message});

  factory ServerException.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('data')) {
      return ServerException(message: json['data']);
    }
    return ServerException(message: 'Ошибка');
  }
  final String message;
}

class NoInternetException implements Exception {}

class CacheException implements Exception {

  CacheException({required this.message});
  final String message;

  @override
  String toString() => message;
}
