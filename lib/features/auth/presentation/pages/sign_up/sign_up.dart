import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppUtils.kPaddingHor16Ver24,
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
                  controller: emailController,
                  onChanged: (value) {},
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
                  onChanged: (value) {},
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
                  onPressed: () {},
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
    );
  }
}
