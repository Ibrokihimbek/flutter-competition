import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/on_boarding/widgets/slider_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currentPage = 0;
  String button = "Next";
  final PageController _controller = PageController();

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const SliderWidget(
        title: "ISH SERVISLARI",
        subTitle: "BIZ BILAN BIRGA OZ ISHINGIZNI VA ISHCHINGIZNI TOPING!",
        image: "",
      ),
      const SliderWidget(
        title: "IMKONIYATI CHEKLANGANLAR",
        subTitle:
            "MAXSUS IMTIYOZLAR VA MOS ISH ORINLARINI TOPISHIUNGIZ MUMKUN!",
        image: "",
      ),
      const SliderWidget(
        title: "VAKANSIYA",
        subTitle: "O'ZINGIZ UCHUN YAXSHI ISH O'RNINI TOPING!",
        image: "",
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "1",
                        style: context.textStyle.boldHeadline,
                      ),
                      Text(
                        "/3",
                        style: context.textStyle.boldHeadline,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: context.textStyle.boldHeadline,
                    ),
                  ),
                ],
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: pages.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: _onChanged,
              itemBuilder: (context, int index) {
                return Container(child: pages[index]);
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
                    children: List<Widget>.generate(pages.length, (int index) {
                      return AnimatedContainer(
                        curve: Curves.linear,
                        duration: const Duration(milliseconds: 300),
                        height: index == _currentPage ? 15 : 10,
                        width: index == _currentPage ? 15 : 10,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (index == _currentPage)
                              ? isEven(_currentPage + 1)
                                  ? const Color(0XFFD7BBE1)
                                  : const Color(0xFFB6BEE5)
                              : const Color(0XFFD9D9D9),
                        ),
                      );
                    }),
                  ),
                  AppUtils.kBoxHeight48,
                  InkWell(
                    onTap: () {
                      if (_currentPage == (pages.length - 1)) {
                        // Navigator.pushReplacementNamed(context, tabBox);
                      } else {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 70,
                      alignment: Alignment.center,
                      width: (_currentPage == (pages.length - 1)) ? 200 : 70,
                      decoration: BoxDecoration(
                        color: isEven(_currentPage + 1)
                            ? const Color(0XFFD7BBE1)
                            : const Color(0xFFC1C4DF),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: (_currentPage == (pages.length - 1))
                          ? Text(
                              button = "Kirish",
                              style: const TextStyle(
                                  color: Color(0XFF4F4E4E), fontSize: 20),
                            )
                          : const Icon(Icons.navigate_next,
                              size: 50, color: Color(0XFF4F4E4E)),
                    ),
                  ),
                  AppUtils.kBoxHeight22,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isEven(int number) {
  return number % 2 == 0;
}
