part of 'package:flutter_competition/features/auth/presentation/pages/sign_up/sign_up.dart';

mixin SignUpMixin on State<SignUpPage>{
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  void initController(){
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  void disposeController(){
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}