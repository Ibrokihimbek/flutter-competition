import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/features/auth/repository/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
  }

  final AuthRepository authRepository;

  Future<void> _signIn(SignInEvent event, Emitter<AuthState> emit) async {
    await _showEmailError(emit);
    await _showPasswordError(emit);
    if (!state.showPasswordError && !state.showEmailError) {
      emit(state.copyWith(signInStatus: SignInStatus.loading));
      var response = await authRepository.signIn(event.email, event.password);
      if (response == "Welcome") {
        //success
        emit(state.copyWith(signInStatus: SignInStatus.success));
      } else {
        //error
        emit(
          state.copyWith(
            signInStatus: SignInStatus.error,
            errorMessage: response,
          ),
        );
      }
    }
  }

  Future<void> _signUp(SignUpEvent event, Emitter<AuthState> emit) async {
    final String? fcmToken = await FirebaseMessaging.instance.getToken();
    await _showEmailError(emit);
    await _showPasswordError(emit);
    if (!state.showPasswordError && !state.showEmailError) {
      emit(state.copyWith(signInStatus: SignInStatus.loading));
      var response = await authRepository.signUp(
          email: event.email,
          password: event.password,
          fcmToken: fcmToken,
          name: event.name);
      if (response == "Registered Successfully") {
        //success
        emit(state.copyWith(signInStatus: SignInStatus.success));
      } else {
        //error
        emit(
          state.copyWith(
            signInStatus: SignInStatus.error,
            errorMessage: response,
          ),
        );
      }
    }
  }

  Future<void> _showEmailError(
    Emitter<AuthState> emit,
  ) async {
    final isEmailRegEx = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!isEmailRegEx.hasMatch(state.email) && (state.email.isNotEmpty)) {
      emit(state.copyWith(showEmailError: true));
    } else {
      emit(state.copyWith(showEmailError: false));
    }
  }

  Future<void> _showPasswordError(
    Emitter<AuthState> emit,
  ) async {
    if (state.password.isEmpty && state.password.length < 6) {
      emit(state.copyWith(showEmailError: true));
    } else {
      emit(state.copyWith(showEmailError: false));
    }
  }
}
