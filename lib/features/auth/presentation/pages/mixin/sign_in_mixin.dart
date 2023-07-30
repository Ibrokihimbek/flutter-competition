part of 'package:flutter_competition/features/auth/presentation/pages/sign_in/sign_in.dart';

mixin SignInMixin on State<SignInPage>{
  late TextEditingController emailController;
  late TextEditingController passwordController;

  void initController(){
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void disposeController(){
    emailController.dispose();
    passwordController.dispose();
  }
}