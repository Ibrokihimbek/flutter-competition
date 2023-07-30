import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class ServerFailure extends Failure {

  ServerFailure({required this.message});
  final String message;

  @override
  List<Object?> get props => [message];
}

class NoInternetFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {

  CacheFailure({required this.message});
  final String message;

  @override
  List<Object?> get props => [message];
}

// ignore: avoid_implementing_value_types
class ConfirmFailure implements Failure {

  ConfirmFailure({required this.message});
  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => message;

  @override
  bool? get stringify => throw UnimplementedError();
}

// ignore: avoid_implementing_value_types
class RegisterFailure implements Failure {

  RegisterFailure({required this.message});
  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => message;

  @override
  bool? get stringify => throw UnimplementedError();
}
