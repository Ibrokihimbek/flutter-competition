import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final VoidCallback onClickSignIn;
  const SignInPage({super.key, required this.onClickSignIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: onClickSignIn,child: Text('SignIn')),),
    );
  }
}
