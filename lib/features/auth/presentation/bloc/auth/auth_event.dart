part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class SignInEvent extends AuthEvent {
  const SignInEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  const SignUpEvent({
    required this.email,
    required this.password,
    required this.name,
  });

  final String email;
  final String password;
  final String name;

  @override
  List<Object?> get props => [email, password, name];
}

class EditEmailEvent extends AuthEvent {
  final String email;

  const EditEmailEvent({
    required this.email,
  });

  @override
  List<Object?> get props => [email];
}

class EditPasswordEvent extends AuthEvent {
  final String password;

  const EditPasswordEvent({
    required this.password,
  });

  @override
  List<Object?> get props => [password];
}