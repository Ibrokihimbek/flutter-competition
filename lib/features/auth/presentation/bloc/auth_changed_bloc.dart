import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_changed_event.dart';

part 'auth_changed_state.dart';

class AuthChangedBloc extends Bloc<AuthChangedEvent, AuthChangedState> {
  AuthChangedBloc() : super(const AuthChangedState()) {
    on<AuthSwitchSignInOrSignUpEvent>(_switchSignInOrSignUp);
  }

  void _switchSignInOrSignUp(
      AuthSwitchSignInOrSignUpEvent event, Emitter<AuthChangedState> emit) {
    emit(state.copyWith(isSignIn: !state.isSignIn));
  }
}
