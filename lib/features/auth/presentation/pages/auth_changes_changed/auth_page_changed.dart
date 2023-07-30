import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/features/auth/presentation/bloc/auth_changed_bloc.dart';
import 'package:flutter_competition/features/auth/presentation/pages/sign_in/sign_in.dart';
import 'package:flutter_competition/features/auth/presentation/pages/sign_up/sign_up.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthChangedBloc, AuthChangedState>(
      builder: (context, state) {
        return state.isSignIn
            ? SignInPage(onClickSignIn: () {
                context.read<AuthChangedBloc>().add(
                      AuthSwitchSignInOrSignUpEvent(isSignIn: state.isSignIn),
                    );
              })
            : SignUpPage(onClickSignUp: () {
                context.read<AuthChangedBloc>().add(
                      AuthSwitchSignInOrSignUpEvent(isSignIn: state.isSignIn),
                    );
              });
      },
    );
  }
}
