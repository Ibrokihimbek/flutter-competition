part of 'auth_changed_bloc.dart';

class AuthChangedState extends Equatable {
  const AuthChangedState({
    this.isSignIn = false,
  });

  final bool isSignIn;

  AuthChangedState copyWith({
    bool? isSignIn,
  }) =>
      AuthChangedState(
        isSignIn: isSignIn ?? this.isSignIn,
      );

  @override
  List<Object?> get props => [isSignIn];
}
