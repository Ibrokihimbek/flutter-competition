import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final VoidCallback onClickSignUp;
  const SignUpPage({super.key, required this.onClickSignUp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: onClickSignUp,child: Text('SignUp')),),
    );
  }
}
