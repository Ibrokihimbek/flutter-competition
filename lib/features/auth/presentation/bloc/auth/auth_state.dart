part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.signInStatus = SignInStatus.initial,
    this.signUpStatus = SignUpStatus.initial,
    this.errorMessage = '',
    this.email = '',
    this.showEmailError = false,
    this.password = '',
    this.showPasswordError = false,
  });

  final SignInStatus signInStatus;
  final SignUpStatus signUpStatus;
  final String errorMessage;
  final String email;
  final bool showEmailError;
  final String password;
  final bool showPasswordError;

  AuthState copyWith({
    SignInStatus? signInStatus,
    SignUpStatus? signUpStatus,
    String? errorMessage,
    String? email,
    bool? showEmailError,
    String? password,
    bool? showPasswordError,
  }) =>
      AuthState(
        signInStatus: signInStatus ?? SignInStatus.initial,
        signUpStatus: signUpStatus ?? SignUpStatus.initial,
        errorMessage: errorMessage ?? this.errorMessage,
        email: email ?? this.email,
        showEmailError: showEmailError ?? this.showEmailError,
        password: password ?? this.password,
        showPasswordError: showPasswordError ?? this.showPasswordError,
      );

  @override
  List<Object?> get props => [
        signInStatus,
        signUpStatus,
        errorMessage,
        email,
        showEmailError,
        password,
        showPasswordError,
      ];
}

enum SignInStatus { initial, loading, success, error }

extension SignInStatusX on SignInStatus {
  bool get isInitial => this == SignInStatus.initial;

  bool get isLoading => this == SignInStatus.loading;

  bool get isSuccess => this == SignInStatus.success;

  bool get isError => this == SignInStatus.error;
}

enum SignUpStatus { initial, loading, success, error }

extension SignUpStatusX on SignUpStatus {
  bool get isInitial => this == SignUpStatus.initial;

  bool get isLoading => this == SignUpStatus.loading;

  bool get isSuccess => this == SignUpStatus.success;

  bool get isError => this == SignUpStatus.error;
}
