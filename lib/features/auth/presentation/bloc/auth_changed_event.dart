part of 'auth_changed_bloc.dart';

abstract class AuthChangedEvent extends Equatable {
  const AuthChangedEvent();
}

class AuthSwitchSignInOrSignUpEvent extends AuthChangedEvent {
  final bool isSignIn;

  const AuthSwitchSignInOrSignUpEvent({
    required this.isSignIn,
  });

  @override
  List<Object?> get props => [];
}
