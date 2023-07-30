import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';
import 'package:flutter_competition/core/widgets/flash_bar/flash_bar.dart';
import 'package:flutter_competition/core/widgets/loading_widgets/modal_progress_hud.dart';
import 'package:flutter_competition/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_competition/injector_container.dart';
import 'package:flutter_competition/router/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'package:flutter_competition/features/auth/presentation/pages/mixin/sign_up_mixin.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback onClickSignUp;

  const SignUpPage({super.key, required this.onClickSignUp});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SignUpMixin {
  @override
  void initState() {
    super.initState();
    initController();
  }

  @override
  void dispose() {
    super.dispose();
    disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) async {
          if (state.signUpStatus.isSuccess) {
            localSource.setIsAuth(true);
            Navigator.pushReplacementNamed(context, Routes.main);
          } else if (state.signUpStatus.isError) {
            await flashBarWidget(
              context: context,
              content: state.errorMessage,
              title: 'An error occurred',
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: AppUtils.kPaddingHor16Ver24,
                child: ModalProgressHUD(
                  inAsyncCall: state.signUpStatus.isLoading,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Text(
                          'Create an\naccount',
                          style: context.textStyle.boldLargeTitle,
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight36),
                      SliverToBoxAdapter(
                        child: CustomTextField(
                          prefixIcon: Padding(
                            padding: AppUtils.kPaddingAll12,
                            child: SvgPicture.asset(SvgImages.userIcon),
                          ),
                          controller: nameController,
                          onChanged: (value) {},
                          hintText: 'Name',
                          contentPadding: AppUtils.kPaddingAll12,
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight36),
                      SliverToBoxAdapter(
                        child: CustomTextField(
                          prefixIcon: Padding(
                            padding: AppUtils.kPaddingAll12,
                            child: SvgPicture.asset(SvgImages.userIcon),
                          ),
                          controller: emailController,
                          showError: state.showEmailError,
                          errorText: "Please enter a valid email address",
                          onChanged: (value) {
                            context
                                .read<AuthBloc>()
                                .add(EditEmailEvent(email: value));
                          },
                          hintText: 'Email',
                          contentPadding: AppUtils.kPaddingAll12,
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight36),
                      SliverToBoxAdapter(
                        child: CustomTextField(
                          prefixIcon: Padding(
                            padding: AppUtils.kPaddingAll12,
                            child: SvgPicture.asset(SvgImages.lock),
                          ),
                          controller: passwordController,
                          showError: state.showPasswordError,
                          errorText:
                              "Password length must be more than 5 characters",
                          onChanged: (value) {
                            context
                                .read<AuthBloc>()
                                .add(EditPasswordEvent(password: value));
                          },
                          hintText: 'Password',
                          contentPadding: AppUtils.kPaddingAll12,
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight36),
                      SliverToBoxAdapter(
                        child: CustomTextField(
                          prefixIcon: Padding(
                            padding: AppUtils.kPaddingAll12,
                            child: SvgPicture.asset(SvgImages.lock),
                          ),
                          controller: confirmPasswordController,
                          onChanged: (value) {},
                          hintText: 'Confirm Password',
                          contentPadding: AppUtils.kPaddingAll12,
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight64),
                      SliverToBoxAdapter(
                        child: ElevatedButton(
                          onPressed: () async {
                            if (confirmPasswordController.text ==
                                passwordController.text) {
                              context.read<AuthBloc>().add(
                                    SignUpEvent(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text,
                                    ),
                                  );
                            } else {
                              await flashBarWidget(
                                context: context,
                                title: 'An error occurred',
                                content:
                                    'Please check your password and try again',
                              );
                            }
                          },
                          child: const Text('Create Account'),
                        ),
                      ),
                      const SliverToBoxAdapter(child: AppUtils.kBoxHeight16),
                      SliverToBoxAdapter(
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              style: context.textStyle.bodyLarge,
                              text: "I Already Have an Account  ",
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = widget.onClickSignUp,
                                  text: "Login",
                                  style: context.textStyle.bodyLarge.copyWith(
                                    color: ThemeColors.light.primaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
