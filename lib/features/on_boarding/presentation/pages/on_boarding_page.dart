import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/on_boarding/presentation/bloc/on_boarding_bloc.dart';
import 'package:flutter_competition/features/on_boarding/widgets/slider_widget.dart';
import 'package:flutter_competition/router/app_routes.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  String button = "Next";
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const SliderWidget(
        title: "Choose Products",
        subTitle:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: PngImage.firstOnBoarding,
      ),
      const SliderWidget(
        title: "Make Payment",
        subTitle:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: PngImage.secondOnBoarding,
      ),
      const SliderWidget(
        title: "Get Your Order",
        subTitle:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: PngImage.thirdOnBoarding,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          int currentPage = context.watch<OnBoardingBloc>().state.currentPage;
          return SafeArea(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 15,
                  child: TextButton(
                    onPressed: () {
                      localSource.setFirstTime(value: true);
                      Navigator.pushReplacementNamed(context, Routes.auth);
                    },
                    child: Text("Skip", style: context.textStyle.boldHeadline),
                  ),
                ),
                AppUtils.kBoxHeight10,
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: pages.length,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    context
                        .read<OnBoardingBloc>()
                        .add(OnboardingTabEvent(currentPage: value));
                    currentPage = value;
                  },
                  itemBuilder: (context, int index) {
                    return pages[index];
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          pages.length,
                          (int index) => AnimatedContainer(
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 300),
                            height: 10,
                            width: index == currentPage ? 30 : 10,
                            margin: AppUtils.kPaddingHorizontal5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: (index == currentPage)
                                  ? ThemeColors.light.primaryColor
                                  : const Color(0XFFD9D9D9),
                            ),
                          ),
                        ),
                      ),
                      AppUtils.kBoxHeight48,
                      GestureDetector(
                        onTap: () {
                          if (currentPage == (pages.length - 1)) {
                            localSource.setFirstTime(value: true);
                            Navigator.pushReplacementNamed(
                                context, Routes.auth);
                          } else {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 60,
                          alignment: Alignment.center,
                          width:
                              (currentPage == (pages.length - 1)) ? 200 : 100,
                          decoration: BoxDecoration(
                            color: ThemeColors.light.primaryColor,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: (currentPage == (pages.length - 1))
                              ? Text(
                                  button = "Get Started",
                                  style: context.textStyle.regularTitle3
                                      .copyWith(color: ThemeColors.light.white),
                                )
                              : Text(
                                  button = "Next",
                                  style: context.textStyle.regularTitle3
                                      .copyWith(color: ThemeColors.light.white),
                                ),
                        ),
                      ),
                      AppUtils.kBoxHeight22,
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
